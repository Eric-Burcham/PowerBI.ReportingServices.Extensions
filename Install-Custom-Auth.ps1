# Stop the report server
net stop PowerBIReportServer

# Compile the .Net solution
dotnet clean;
dotnet build;

# Update the ReportServer folder
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\Sso.aspx 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\'

# Update the ReportServer\bin folder
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\PowerBI.ReportingServices.Security.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin'
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\PowerBI.ReportingServices.Security.pdb 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin'


# Update the Portal folder
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\PowerBI.ReportingServices.Security.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\Portal'
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\PowerBI.ReportingServices.Security.pdb 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\Portal'

# Update the PowerBI folder
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\PowerBI.ReportingServices.Security.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\PowerBI'
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\PowerBI.ReportingServices.Security.pdb 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\PowerBI'


# Start the report server
net start PowerBIReportServer
