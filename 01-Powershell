# Obter versão do PowerShell
$PSVersionTable.PSVersion

# Obter Cmdlets do PowerShell
Get-Command -CommandType Cmdlet

# Atualizar help do PowerShell
Update-Help

# Obter ajuda de um Cmdlet -> No terminal/ Na janela de ajuda/ Na web
Get-Help Get-Process
Get-Help Get-Process -ShowWindow
Get-Help Get-Process -Online

# Redirecionadores
Get-Process | ConvertTo-Json    # | - Redireciona a saída de um comando para a entrada de outro comando
Get-Process > processos.txt     # > - Cria um arquivo ou sobrescreve o arquivo existente
Get-Date >> processos.txt       # >> - Cria um arquivo ou anexa ao arquivo existente
Update-Help 2> erros.txt        # 2> - Cria um arquivo ou sobrescreve o arquivo existente com os erros
Update-Help 2>> erros.txt       # 2>> - Cria um arquivo ou anexa ao arquivo existente com os erros
Update-Help 2>&1                # 2>&1 - Redireciona a saída de erro para a saída padrão

# Cmdlets de Redirecionamento de Saída (Out-*)
Get-Process | Out-File processos.txt    # Salva a saída de um comando em um arquivo
Get-Process | Out-String                # Converte a saída de um comando em uma única string
Get-Process | Out-GridView              # Exibe a saída de um comando em uma grade
Get-Process | Out-Printer               # Envia a saída de um comando para a impressora padrão
Get-Process | Out-Null                  # Descarta a saída de um comando
Get-Process | Out-Host                  # Exibe a saída de um comando no console
Get-Process | Out-Default               # Envia a saída de um comando para o formato padrão

# Filtrando a saída de um comando (Where-Object)
Get-Service | Where-Object {$_.Status -eq 'Running'}                            # Operador de comparação (-eq, -ne, -gt, -lt, -ge, -le)
Get-Service | Where-Object {$_.Name -like 'w*' -and $_.Status -eq 'Running'}    # Operador de correspondência (-like, -notlike, -match, -notmatch)
Get-Service | Where-Object {$_.Name -in 'wuauserv', 'wudfsvc'}                  # Operador de comparação de intervalo (-contains, -notcontains, -in, -notin)


# Modulos e Scripts
Get-PSRepository                                                                                # Obter repositórios registrados
Set-PSRepository -Name 'MyRepo' -InstallationPolicy Trusted                                     # Configurar um repositório
Register-PSRepository -Name 'MyRepo' -SourceLocation 'C:\MyRepo' -InstallationPolicy Trusted    # Registrar um repositório
Unregister-PSRepository -Name 'MyRepo'                                                          # Desregistrar um repositório

Get-InstalledModule                                                                             # Obter módulos instalados
Get-Module -ListAvailable                                                                       # Obter módulos disponíveis
Install-Module -Name Az -AllowClobber                                                           # Instalar um módulo
Import-Module ActiveDirectory                                                                   # Importa um módulo
Save-Module -Name Az -Path 'C:\MyModule'                                                        # Salvar um módulo
Update-Module -Name Az -Force                                                                   # Atualizar um módulo
Uninstall-Module -Name Az -Force                                                                # Desinstalar um módulo
Publish-Module -Path 'C:\MyModule'                                                              # Publicar um módulo
Find-Module -Repository PSGallery                                                               # Encontrar módulos no repositório PSGallery
Find-Command -Module ActiveDirectory                                                            # Encontrar Cmdlets de um módulo
Find-DscResource -Module xNetworking                                                            # Encontrar recursos DSC de um módulo
Update-ModuleManifest -Path 'C:\MyModule\MyModule.psd1'                                         # Atualizar um manifesto de módulo

Find-RolesCapability -Role 'Web Server'                                                         # Encontrar capacidades de função

Find-Script -Tag 'Azure'                                                                        # Encontrar scripts com uma tag específica
Get-InstalledScript                                                                             # Obter scripts instalados
Install-Script -Name Az -AllowClobber                                                           # Instalar um script
Publish-Script -Path 'C:\MyScript'                                                              # Publicar um script
Save-Script -Name Az -Path 'C:\MyScript'                                                        # Salvar um script
Uninstall-Script -Name Az -Force                                                                # Desinstalar um script
Update-Script -Name Az -Force                                                                   # Atualizar um script
Update-ScriptFileInfo -Path 'C:\MyScript\MyScript.ps1'                                          # Atualizar informações de arquivo de script
Test-ScriptFileInfo -Path 'C:\MyScript\MyScript.ps1'                                            # Testar informações de arquivo de script