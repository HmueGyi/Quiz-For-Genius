# Installation Guide

## Prerequisites
- .NET Framework (version compatible with ASP.NET Web Forms)
- SQL Server for database management
- A web server (e.g., IIS) to host the application

## Steps
1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Open the solution file `ProjectDesignTemplate.sln` in Visual Studio.
3. Restore NuGet packages:
   ```bash
   nuget restore
   ```
4. Configure the database:
   - Attach the `App_Data/ArUGenius.mdf` database file to your SQL Server.
   - Update the connection string in `Web.config` to match your SQL Server instance.
5. Build the solution in Visual Studio.
6. Deploy the application to your web server.
7. Access the application via your browser.

## Troubleshooting
If you encounter issues, ensure all prerequisites are installed and configured correctly.