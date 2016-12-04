REM Script to check for a program and install if needed
REM Example given using Microsoft.NET Framework
REM /q normally gives a silent install
REM For other command line arguments for each installer Google it

set result=false
if exist "C:\Program Files\Microsoft.NET" (set result=true)
if exist "C:\Program Files (x86)\Microsoft.NET" (set result=true)
if "%result%"=="false" (
	start ""

	REM Change path below: 
	"** path to microsoft.net installer .exe file in a shared folder **" 
	REM Command line arguments:
	/q	
)