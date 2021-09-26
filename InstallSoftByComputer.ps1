
# :: % Version 1.0 %
# :: % 26/09/2021 %
# :: % culex.jj@gmail.com %
# :: % The loop will read the computer names from a file (computers.txt) %
# :: % Execute the script for checking the software intalled %
# :: % The Outpout produced a file with the detail of sotfware installed each machine %
# :: % Acknowledgements to everyones help me to set up this batch, included stackoverflow.com, docs.microsoft.com, forum.sysinternals.com, ss64.com and a lot of more %



Get-Content D:\computers.txt | ForEach-Object {
    $computer = $_;
    
    echo ""
    echo "Computer Name: $computer" 

    Get-WmiObject -class win32_product -ComputerName $computer -Property * | Sort-Object -Property Name | Format-Table  PSComputerName, Name, Version, IdentifyingNumber -HideTableHeaders -Wrap -Auto 
           
}  >> D:\SoftwareInstalled.txt
