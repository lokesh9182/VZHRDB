@echo off
cd /d C:\Users\ABDULLA\Desktop\KLR_Project\Tomcat\bin
start "" "C:\Users\ABDULLA\Desktop\KLR_Project\Tomcat\bin\startup.bat"
timeout /t 5 > NUL
start "" http://localhost:8080/HRDashBoard/home
exit
