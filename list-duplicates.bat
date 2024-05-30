@echo off
SETLOCAL ENABLEEXTENSIONS ENABLEDELAYEDEXPANSION
SET FILELIST=
FOR %%i IN (*) DO (
	FOR %%j IN (!FILELIST!) DO (
		IF %%~zi EQU %%~zj (
			fc /b "%%~i" "%%~j">NUL && echo "%%~i" = "%%~j"
		)
	)
	SET FILELIST=!FILELIST! "%%~i"
)
ENDLOCAL