REM --------------------------------------------------------------------------
REM Author: Séamus Ó Ceanainn
REM Email: seamusoceanainn@gmail.com
REM --------------------------------------------------------------------------

REM --------------------------------------------------------------------------
REM Change the following variables
REM --------------------------------------------------------------------------

SET "MY_PATH=C:\Users\User\Folder"
SET "FOLDER_NAME=FOLDER"


REM --------------------------------------------------------------------------
REM Do not change anything below this line unless you know what you are doing
REM --------------------------------------------------------------------------

SET "BACKUP_PATH=%~dp0\%FOLDER_NAME%"
ROBOCOPY %MY_PATH% %BACKUP_PATH% /S /XO /FFT
ROBOCOPY %BACKUP_PATH% %MY_PATH% /S /XO /FFT