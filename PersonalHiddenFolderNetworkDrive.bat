NET USE * /Delete /Y
NET USE A: \\192.168.1.1\folderName
MD "\\192.168.1.1\folderName\%username%" 2>NUL
attrib +h \\192.168.1.1\folderName\%username% /s /d
icacls "\\192.168.1.1\folderName\%username%" /grant 192.168.1.1\%username%:F /Q
NET USE A: /Delete /Y
NET USE A: \\192.168.1.1\folderName\%username%