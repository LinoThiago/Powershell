# Diferentes formas de definir funções em PowerShell

# Forma 1 - Sem parênteses
function Get-HelloWorld1 {
    Write-Output "Hello, World!"
}

# Forma 2 - Com parênteses
function Get-HelloWorld2() {
    Write-Output "Hello, World!"
}

# Forma 3 - Com parâmetros
function Get-HelloWorld3 {
    param()
    Write-Output "Hello, World!"
}

# Forma 4 - Com parâmetros e valor de retorno
function Get-HelloWorld4 {
    param($Name)
    Write-Output "Hello, $Name!"
}

# Forma 5 - Com parâmetros obrigatórios
function Get-HelloWorld5 {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Name
    )
    Write-Output "Hello, $Name!"
}

# Forma 6 - Com parâmetros obrigatórios e valor de retorno
function Get-HelloWorld6 {
    param(
        [Parameter(Mandatory=$true)]
        [string]$Name
    )
    Write-Output "Hello, $Name!"
    return "Hello, $Name!"
}