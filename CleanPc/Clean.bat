@echo off

del/s/f/q c:\windows\temp\*.*
rd/s/q c:windows\temp
md c:\windows\temp
del/s/f/q C:\WINDOWS\Prefetch
del/s/f/q %temp%\*.*
rd/s/q %temp%
md %temp%
deltree/y c:\windows\tempor~1
deltree/y c:\windows\temp
deltree/y c:\windows\tmp
deltree/y c:\windows\ff*.tmp
deltree/y c:\windows\history
deltree/y c:\windows\cookies
deltree/y c:\windows\recent
deltree/y c:\windows\spool\printers
del c:\WIN386.SWP

cls

:: Loop through all drive letters from C to Z
for %%d in (C D E F G H I J K L M N O P Q R S T U V W X Y Z) do (
    rem Check if the drive exists
    if exist "%%d:\$Recycle.Bin" (
        rem Delete the recycle bin folder for the drive
        echo Deleting recycle bin for drive %%d
        rd /s /q "%%d:\$Recycle.Bin"
    )
)

echo All recycle bins deleted.

