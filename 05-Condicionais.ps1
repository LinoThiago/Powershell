# Operadores de comparação
# -lt -> Menor que
# -le -> Menor ou igual a
# -gt -> Maior que
# -ge -> Maior ou igual a
# -eq -> Igual a
# -ne -> Diferente de
# -like -> Compara strings
# -notlike -> Não é igual a
# -contains -> Verifica se um item está em uma lista
# -notcontains -> Não contém
# -match -> Corresponde
# -notmatch -> Não corresponde

# Consultar um serviço do Windows
$service = Get-Service -Name 'EFS'

if ($service.Status -eq 'Running') {
    Write-Host "O serviço está em execução"
} else {
    Write-Host "O serviço não está em execução"
}

# Teste de conexão
$connection = Test-Connection -ComputerName 'www.google.com' -Count 1 -Quiet

if ($connection -eq $true) {
    Write-Host "Conexão bem-sucedida"
} else {
    Write-Host "Falha na conexão"
}