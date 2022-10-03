# Stop the report server
net stop PowerBIReportServer

# Compile the .Net solution
dotnet clean;
dotnet build;

# Update the ReportServer folder
Remove-Item 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\Sso.aspx'

# Update the ReportServer\bin folder
Remove-Item 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin\PowerBI.ReportingServices.Security.dll'
Remove-Item 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin\PowerBI.ReportingServices.Security.pdb'


# Update the Portal folder
Remove-Item 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\Portal\PowerBI.ReportingServices.Security.dll'
Remove-Item 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\Portal\PowerBI.ReportingServices.Security.pdb'

# Update the PowerBI folder
Remove-Item 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\PowerBI\PowerBI.ReportingServices.Security.dll'
Remove-Item 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\PowerBI\PowerBI.ReportingServices.Security.pdb'


# Start the report server
net start PowerBIReportServer
