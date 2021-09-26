@echo off
setlocal DisableDelayedExpansion

echo Cleaning up
for %%a in (Books Pics Music Torrents Docs Executables Zips) do call:check_create %%a

pause

Rem BOOKS:
for   %%f in (*.pdf *.djvu *.epub *.html *.mobi) do move "%%f"Books
echo moved Books

Rem Pics
for   %%f in (*.jpg *.jpeg *.gif  *.jiff *.tif) do move "%%f" Pics
echo moved Pics

Rem Music
for   %%f in (*.mp3) do move "%%f" Music
echo moved Music


Rem Torrents
for   %%f in (*.torrent) do move "%%f" Torrents
echo moved Torrents

Rem Docs
for   %%f in (*.pptx *.docx *.txt) do move "%%f" Docs
echo moved Docs

Rem Executables
for   %%f in (*.exe) do move "%%f" Executables
echo moved Executables

Rem Zips
for   %%f in (*.zip *.7z) do move "%%f" Zips
echo moved Zips


echo All done!
pause
goto :EOF


:check_create    
if exist %~1/ (
    echo The %~1 folder already exists.
)else (
    mkdir %~1
    echo Created %~1 folder.
)

