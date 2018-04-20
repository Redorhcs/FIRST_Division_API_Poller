$starttime = get-Date -format r
"Schroder's Detroit Division API Script"
"---------------------------------------"
"Located at https://github.com/Redorhcs/FIRST_Division_API_Poller
License GNU GPL 3 @ https://github.com/Redorhcs/FIRST_Division_API_Poller/blob/master/LICENSE"
"Run started at:" 
$starttime
start-sleep -Seconds 2
While(1)
{
clear
"Schroder's Detroit Division API Script"
"---------------------------------------"
$request = 'http://frc.divisions.co/api/v2/status'
Invoke-WebRequest $request |
ConvertFrom-Json |
select -expand north
get-Date -format r
start-sleep -seconds 60
"---------------------------------------"
"Located at https://github.com/Redorhcs/FIRST_Division_API_Poller
License GNU GPL 3 @ https://github.com/Redorhcs/FIRST_Division_API_Poller/blob/master/LICENSE"
}
