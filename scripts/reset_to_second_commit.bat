@echo off

set MYPROJ=myproj
IF EXIST %MYPROJ% (
    rmdir /s /q %MYPROJ%
)

REM Clone the repository
@echo "git clone https://github.com/nicholastch/%MYPROJ%.git"
git clone https://github.com/nicholastch/%MYPROJ%.git
cd %MYPROJ%

REM Get the first commit hash
for /f %%i in ('git rev-list --max-parents^=0 HEAD') do set FIRST_COMMIT=%%i

REM Get the second commit hash
for /f %%i in ('git rev-list --reverse HEAD') do (
    set /a count+=1
    if !count! equ 2 set SECOND_COMMIT=%%i
)

@REM REM Hard reset to the first commit
@REM @echo "git reset --hard %FIRST_COMMIT%"
@REM git reset --hard %FIRST_COMMIT%

REM Hard reset to the second commit
@echo "git reset --hard %SECOND_COMMIT%"
git reset --hard %SECOND_COMMIT%

REM Force push to remote
@echo "git push origin HEAD --force"
git push origin HEAD --force

@pause
