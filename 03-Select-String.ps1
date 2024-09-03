#Seguem alguns exemplos de utilização do comando Select-String

# Utilizando Select-String para buscar texto em arquivos
Get-Content 02-VariaveisPowershell.ps1 | Select-String 'minuto' -CaseSensitive

# Utilizando Select-String para buscar arquivos em pastas e subpastas com extensão .ps1 que contenham a palavra 'minuto'
Get-ChildItem -Path .\ -Recurse -Include *.ps1 | Select-String 'minuto' -CaseSensitive

# Utilizando Select-String para buscar arquivos em pastas e subpastas com extensão .ps1 que contenham a palavra 'minuto' e exibindo o nome do arquivo
Get-ChildItem -Path .\ -Recurse -Include *.ps1 | Select-String 'minuto' -CaseSensitive | Select-Object Path

# Utilizando Select-String para buscar arquivos em pastas e subpastas com extensão .ps1 que contenham a palavra 'minuto' e exibindo o nome do arquivo e o número da linha
Get-ChildItem -Path .\ -Recurse -Include *.ps1 | Select-String 'minuto' -CaseSensitive | Select-Object Path, LineNumber

# Utilizando Select-String para buscar arquivos em pastas e subpastas com extensão .ps1 que contenham a palavra 'minuto' e exibindo o nome do arquivo, o número da linha e o texto da linha
Get-ChildItem -Path .\ -Recurse -Include *.ps1 | Select-String 'minuto' -CaseSensitive | Select-Object Path, LineNumber, Line