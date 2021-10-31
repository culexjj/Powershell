    
# :: % Version 1.0 %
# :: % 30/10/2021 %
# :: % culex.jj@gmail.com %
# :: % Acknowledgements to everyones help me to set up this batch, included stackoverflow.com, docs.microsoft.com, forum.sysinternals.com, ss64.com and a lot of more

#We get the computer name
$ComputerName = $env:COMPUTERNAME

#We need to replace here <domain\admin> (removing <>) with a domain name & user with privileges to do this action
Remove-Computer -ComputerName $ComputerName -Credential <domain\admin> -Restart -Force