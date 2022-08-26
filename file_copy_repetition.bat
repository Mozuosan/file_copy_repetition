set dirname=%~n1
title PDF copy repetition

set basedir=.
if not '%1'=='' set basedir=%1

for /l %%n in (1,1,20) do (
for %%f in (%basedir%\*.pdf) do (
copy "%%f" "C:\Users\USER_NAME\Desktop\out1\%%~nf_%%n.pdf" > nul 2>&1
timeout /t 7 /nobreak > nul
)
)

rem pause