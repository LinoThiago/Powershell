# Utilizando o objeto WScript.Shell para executar comandos no sistema operacional

# Criar um objeto WScript.Shell
$shell = New-Object -ComObject WScript.Shell

# Executar um comando no sistema operacional
$shell.Run("notepad.exe")
Start-Sleep -Seconds 5
$shell.AppActivate("Bloco de Notas")
$shell.SendKeys("Hello World!")
Start-Sleep -Seconds 5
$shell.Popup("Hello World!", 0, "Hello World!", 0x1)