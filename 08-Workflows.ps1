# Workflow
workflow Get-ServiceStatus {
    $services = Get-Service
    foreach -parallel ($service in $services) {
        $status = $service.Status
        $name = $service.Name
        Write-Output "$name is $status"
    }
}

Get-ServiceStatus