# :: % Version 1.0 %
# :: % 30/10/2021 %
# :: % culex.jj@gmail.com %
# :: % Acknowledgements to everyones help me to set up this batch, included stackoverflow.com, docs.microsoft.com, forum.sysinternals.com, ss64.com and a lot of more %

#We get the computer name  
$ComputerName = $env:COMPUTERNAME

#We ask for the new machine name
$NewComputerName = Read-Host "New name?:"

#We need to replace here <Admin> (removing <>) with user with privileges to do this action
Rename-Computer -NewName $NewComputerName -LocalCredential $ComputerName\<Admin> -PassThru
        
   