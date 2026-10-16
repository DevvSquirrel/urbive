@echo off
cd /d "%~dp0"
echo Abra http://127.0.0.1:8765/ no navegador.
echo Mantenha esta janela aberta. Ctrl+C encerra o servidor.
python -m http.server 8765 --bind 127.0.0.1 --directory dist
pause
