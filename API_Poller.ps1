While(1)
{
clear
$request = 'http://frc.divisions.co/api/v2/status'
Invoke-WebRequest $request |
ConvertFrom-Json |
select -expand north
get-Date -format r
start-sleep -seconds 60
}
