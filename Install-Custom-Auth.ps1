# Stop the report server
net stop PowerBIReportServer

# Compile the .Net solution
dotnet clean;
dotnet build;

# Copy over the Sso.aspx file
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\Sso.aspx 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\' -Confirm
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\EntityFramework.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin' -Confirm
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\EntityFramework.SqlServer.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin' -Confirm
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\Microsoft.Extensions.DependencyInjection.Abstractions.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin' -Confirm
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\Microsoft.Extensions.DependencyInjection.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin' -Confirm
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\Microsoft.ReportingServices.Interfaces.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin' -Confirm
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\PowerBI.ReportingServices.Security.dll 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin' -Confirm
Copy-Item .\src\PowerBI.ReportingServices.Security\bin\Debug\net48\PowerBI.ReportingServices.Security.pdbl 'C:\Program Files\Microsoft Power BI Report Server\PBIRS\ReportServer\bin' -Confirm

# Start the report server
net start PowerBIReportServer