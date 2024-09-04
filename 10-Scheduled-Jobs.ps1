# Scheduled Jobs

# Obter todos os comandos disponíveis no módulo PSScheduledJob
Get-Command -Module PSScheduledJob | Sort-Object Noun

# Trigger de tempo
$umavez = New-JobTrigger -Once -At "10:00"
$diario = New-JobTrigger -Daily -At "10:00"
$semanal = New-JobTrigger -Weekly -At "10:00" -DaysOfWeek Monday

# Criar um trabalho agendado
Register-ScheduledJob -Name "Backup" -Trigger $diario -ScriptBlock {
    Get-Date | Out-File -FilePath C:\Users\F6HF\Backup.txt -Append
}

# Verificar se o trabalho agendado foi criado
Get-ScheduledJob -Name "Backup"

# Remover o trabalho agendado
Unregister-ScheduledJob -Name "Backup"