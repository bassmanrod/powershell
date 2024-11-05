$action = New-ScheduledTaskAction -Execute 'Powershell.exe' -Argument 'deleteGoogleCache.ps1'

$trigger =  New-ScheduledTaskTrigger -Daily -At 11pm

Register-ScheduledTask -Action $action -Trigger $trigger -TaskName "DeleteGoogleCache" -Description "This delete google's cache daily."
