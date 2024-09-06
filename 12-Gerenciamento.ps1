# Gerenciamento com PowerShell
# Gerenciamento remoto
Enable-PSRemoting -Force                    # Habilitar o WinRM no server
Enter-PSSession -ComputerName "Server01"    # Conexão remota
Exit-PSSession                              # Sair da sessão remota

# Comandos remotos
Invoke-Command -ComputerName "Server01" -ScriptBlock { Get-Process }

# Sessão persistente
$Session = New-PSSession -ComputerName "Server01"
Invoke-Command -Session $Session -ScriptBlock { 
    $i = 0
    while ($i -lt 1000) {
        $i++
        Start-Sleep -Seconds 1
        Write-Host "Contador: $i"
    }
} -As Job -JobName "Contador"

Get-Job -Name "Contador" | Receive-Job -Keep    # Verificar status do job remoto
Get-Job -Name "Contador" | Stop-Job             # Parar job remoto
Disconnect-PSSession -Session $Session          # Desconectar sessão remota
Remove-PSSession -Session $Session              # Encerrar sessão remota
Get-PSSession                                   # Listar sessões remotas
Receive-PSSession $Session                      # Receber sessão remota

# Gerenciamento remoto maquina fora do domínio
Get-Item WSMan:\localhost\Client\TrustedHosts                           # Listar hosts confiáveis no server
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "Server01" -Force  # Adicionar host confiável no server
$credencial = Get-Credential "Server01\Admin"                           # Criar credencial
New-PSSession -ComputerName "Server01" -Credential $credencial          # Conectar com credenciais

# Acessar o servidor remoto pela web
Install-WindowsFeature -Name "WindowsPowerShellWebAccess" -IncludeManagementTools -ComputerName "Server01"  # Instalar Feature
Uninstall-WindowsFeature -Name "WindowsPowerShellWebAccess" -ComputerName "Server01"  # Desinstalar Feature

Install-PswaWebApplication -UseTestCertificate -WebApplicationName "PSWA"  # Instalar PSWA
Uninstall-PswaWebApplication -WebApplicationName "PSWA"                    # Desinstalar PSWA

Add-PswaAuthorizationRule -UserName "Server01\Admin" -ComputerName "Server01"     # Adicionar regra de autorização
Get-PswaAuthorizationRule -ComputerName "Server01"                                # Listar regras de autorização
Remove-PswaAuthorizationRule -UserName "Server01\Admin" -ComputerName "Server01"  # Remover regra de autorização

# Renomeando computador
$info = Get-WmiObject -Class Win32_ComputerSystem   # Obter informações do computador
$info.Rename("Server01")                            # Renomear computador

# Gerenciamento de rede
Get-NetIPConfiguration                                                                                                         # Listar configurações de rede
New-NetIPAddress -InterfaceAlias "Ethernet" -IPAddress  -DefaultGateway "192.168.1.254" -AddressFamily IPv4 -PrefixLength 24   # Adicionar IP
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ServerAddresses "192.168.1.254"                                         # Adicionar DNS
Set-NetIPInterface -InterfaceAlias "Ethernet" -Dhcp Enable                                                                     # Habilitar DHCP
Set-NetIPInterface -InterfaceAlias "Ethernet" -Dhcp Disable                                                                    # Desabilitar DHCP
Set-DnsClientServerAddress -InterfaceAlias "Ethernet" -ResetServerAddresses                                                    # Resetar DNS
Add-Computer -ComputerName "Server01" -DomainName "dominio.local" -Restart                                                     # Adicionar ao domínio

# Gerenciando o Active Directory
Install-WindowsFeature -Name "AD-Domain-Services" -IncludeManagementTools -ComputerName "Server01"  # Instalar AD
Uninstall-WindowsFeature -Name "AD-Domain-Services" -ComputerName "Server01"                        # Desinstalar AD
Get-Command -Module ActiveDirectory                                                                 # Listar comandos do módulo