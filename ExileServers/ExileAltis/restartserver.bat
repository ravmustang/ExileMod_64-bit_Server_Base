
@echo off

::TURN OFF FIREWALL RULE TO PREVENT NETWORK TRAFFIC
echo Disabling firewall rules for this server
netsh advfirewall firewall delete rule name="ExileAltis" program="C:\ExileServers\ExileAltis\arma3server_x64.exe"
timeout 3

::MAKE SURE ALL TASKS ARE REALLY STOPPED
echo Making sure all instances of this server have stopped
taskkill /f /fi "status eq not responding" /im servermonitor.exe
taskkill /f /im servermonitor.exe
taskkill /f /fi "status eq not responding" /im bec.exe
taskkill /f /im bec.exe
taskkill /f /fi "status eq not responding" /im arma3server_x64.exe
taskkill /f /im arma3server_x64.exe
timeout 5

::RESTARTING THE ARMA 3 SERVER
echo Starting ARMA 3 Server...
C:\Windows\System32\cmd.exe /C start "arma3"  "C:\ExileServers\ExileAltis\arma3server_x64.exe" "-mod=@exile;" "-servermod=@extdb3;@Exileserver;" -config=C:\ExileServers\ExileAltis\DonkeyPunch\config.cfg -port=2302 -profiles=DonkeyPunch -cfg=C:\ExileServers\ExileAltis\DonkeyPunch\basic.cfg -name=DonkeyPunch -BEPath=C:\ExileServers\ExileAltis\battleye -autoINIT -Loadmissiontomemory
echo ARMA 3 Server is started
timeout 25

::RESTARTING BATTLEYE
echo Start BEC
set bec="C:\ExileServers\ExileAltis\battleye\BEC"
cd /d %bec%
start "" /min "bec.exe" --dsc config.cfg
echo Battleye has started.. 
timeout 15

:: THIS RUNS THE SERVER MONITOR FOR YOU SO YOU DON'T FORGET
echo Starting Server Monitor Loop
set ServerMonitorPath="C:\ExileServers\ExileAltis"
cd /d %ServerMonitorPath%
start "" "servermonitor.bat"
echo Server Monitor has started. Have Fun
timeout 10

::OPEN UP FIREWALL FOR NETWORK TRAFFIC
echo Turning on Firewall Rule to allow server network traffic
netsh advfirewall firewall add rule name="ExileAltis" dir=in action=allow program="C:\ExileServers\ExileAltis\arma3server_x64.exe" enable=yes
echo Firewall is on and players can join

::FINISHED
timeout 2
@exit 