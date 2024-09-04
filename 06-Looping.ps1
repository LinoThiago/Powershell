# Comando For
for ($i = 0; $i -lt 10; $i++) {
    Write-Host "Valor de i: $i"
}

# Comando ForEach
$computers = 'localhost', 'www.google.com', 'www.microsoft.com'

foreach ($computer in $computers) {
    $connection = Test-Connection -ComputerName $computer -Count 1 -Quiet

    if ($connection -eq $true) {
        Write-Host "Conexão com $computer bem-sucedida"
    } else {
        Write-Host "Falha na conexão com $computer"
    }
}

# Comando While
$i = 0

while ($i -lt 10) {
    Write-Host "Valor de i: $i"
    $i++
}