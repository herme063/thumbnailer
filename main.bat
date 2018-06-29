@ECHO off >nul
FOR /r %%F IN (*.mp4,*.avi,*.flv,*.mov,*.wmv) DO (
	IF NOT EXIST "%%~nF.gif" (
		IF EXIST "%%~nF" RD /S /Q "%%~nF"
		MD "%%~nF"
		ffmpeg -i "%%~nxF" -vf "scale=320:-1,fps=1/60" "%%~nF/img_%%03d.jpg"
		magick convert -delay 50 -loop 0 "%%~nF/img_*.jpg" "%%~nF.gif"
		RD /S /Q "%%~nF"
		ECHO Generated "%%~nF.gif"...
	)
)
PAUSE
