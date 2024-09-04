# Workflow pegar o status do serviço a cada 5 segundos
workflow PegarStatusServico
{
    $servico = "wuauserv"
    $status = Get-Service -Name $servico

    while ($status.Status -ne "Running")
    {
        Write-Output "O serviço $servico está parado"
        Start-Sleep -Seconds 5
        $status = Get-Service -Name $servico
    }

    Write-Output "O serviço $servico está rodando"
}

# Iniciar o workflow como um job
$testeJob = PegarStatusServico -AsJob

# Comandos para gerenciar o job
Wait-Job -Job $testeJob         # Aguardar o job terminar
Receive-Job -Job $testeJob      # Verificar o status do job
Suspend-Job -Job $testeJob      # Pausar o job
Resume-Job -Job $testeJob       # Retomar o job
Stop-Job -Job $testeJob         # Parar o job# Parar o job
Remove-Job -Job $testeJob       # Remover o job
Get-Job -Name $testeJob.Name    # Verificar se o job foi removido