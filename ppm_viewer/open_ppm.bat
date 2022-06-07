<!-- : starting html comment

:: FileSelector.bat
@echo off
for /f "tokens=* delims=" %%p in ('mshta.exe "%~f0"') do (
    set "file=%%~fp"
)
echo/
if not "%file%" == "" (
    echo selected  file is : %file%

"ppmviewer.exe" "%file%"
pause

)
echo/
exit /b
-->
<Title>--- PPM Viewer ---</Title>
<body>
    <script language='javascript'>
window.resizeTo(500,250);

    function pipeFile() {
	 
         var file=document.getElementById('file').value;
         var fso= new ActiveXObject('Scripting.FileSystemObject').GetStandardStream(1);
         close(fso.Write(file));

    }
    </script>
<input type='file' name='file' size='30'>
</input><hr><button onclick='pipeFile()'>Read</button>
</body>