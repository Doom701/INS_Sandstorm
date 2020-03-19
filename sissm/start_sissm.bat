@echo off
title sissm

echo Starting sissm with config: sissm_Live_Server.cfg

echo Checking Files...
cd C:\Users\INSAdmin\Desktop\sandstorm-admin-wrapper-master-V2\sandstorm-server\Insurgency\Saved\Logs
	if exist Live?Server.log (
		echo File "Live Server.log" exists.
	) else (
		echo Error: 
		echo File "Live Server.log" doesn't exist.
		pause
		exit
	)
cd C:\Users\INSAdmin\Desktop\sandstorm-admin-wrapper-master-V2\sissm
	if exist sissm.exe (
		echo File "sissm.exe" exists.
	) else (
		echo Error:
		echo File "sissm.exe" doesn't exist.
		pause
		exit
	) 
	if exist sissm_badwords.txt (
		echo File "sissm_badwords.txt" exists.
	) else (
		echo Error: 
		echo File "sissm_badwords.txt" doesn't exist.
		pause
		exit
	)
	if exist sissm_Live_Server.cfg (
		echo File "sissm_Live_Server.cfg" exists.
	) else (
		echo Error: 
		echo File "sissm_Live_Server.cfg" doesn't exist.
		pause
		exit
	)
	if exist sissm_Live_Server.html (
		echo File "sissm_Live_Server.html" exists.
	) else (
		echo Error: 
		echo File "sissm_Live_Server.html" doesn't exist.
		pause
		exit
	)
cd "C:\Users\INSAdmin\Desktop\sandstorm-admin-wrapper-master-V2\server-config\Live Server"
	if exist sissm_Admins.txt (
		echo File "sissm_Admins.txt" exists.
	) else (
		echo Error: 
		echo File "sissm_Admins.txt" doesn't exist.
		pause
		exit
	)
	if exist sissm_Admins-Senior.txt (
		echo File "sissm_Admins-Senior.txt" exists.
	) else (
		echo Error: 
		echo File "sissm_Admins-Senior.txt" doesn't exist.
		pause
		exit
	)
	if exist sissm_Moderators.txt (
		echo File "sissm_Moderators.txt" exists.
	) else (
		echo Error: 
		echo File "sissm_Moderators.txt" doesn't exist.
		pause
		exit
	)
	if exist sissm_Patrons.txt (
		echo File "sissm_Patrons.txt" exists.
	) else (
		echo Error: 
		echo File "sissm_Patrons.txt" doesn't exist.
		pause
		exit
	)
echo Complete
echo Running sissm with config: sissm_Live_Server.cfg
cd C:\Users\INSAdmin\Desktop\sandstorm-admin-wrapper-master-V2\sissm\
start "sissm" sissm.exe sissm_Live_Server.cfg
exit
