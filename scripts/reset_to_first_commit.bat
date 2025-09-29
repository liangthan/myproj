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

REM Hard reset to the first commit
@echo "git reset --hard %FIRST_COMMIT%"
git reset --hard %FIRST_COMMIT%

REM Force push to remote
@echo "git push origin HEAD --force"
git push origin HEAD --force

@pause
