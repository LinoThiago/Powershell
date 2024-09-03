# Validando o formato de um e-mail

# Definindo o padrão de e-mail
$pattern = '^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$'

# Definindo um e-mail válido
$email = Read-Host 'Digite um e-mail'

# Verificando se o e-mail é válido
if ($email -match $pattern) {
    Write-Host 'E-mail válido'
} else {
    Write-Host 'E-mail inválido'
}

# Validando o formato de um CPF

# Definindo o padrão de CPF
$pattern = '^\d{3}\.\d{3}\.\d{3}-\d{2}$'

# Definindo um CPF válido
$cpf = Read-Host 'Digite um CPF'

# Verificando se o CPF é válido
if ($cpf -match $pattern) {
    Write-Host 'CPF válido'
} else {
    Write-Host 'CPF inválido'
}