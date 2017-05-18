# Exile 1.0.2 + 64-bit and Dynamic Simulation

This repo is licensed under APL-SA and is free to use / modify / redistribute
Please pay attention and read any included licensing files for the respective addon its with.
This repo includes files licensed outside the scope of APL-SA.
You must follow the licensing included within the packages.
This includes Exile / extDB3 / BattlEye / BEC
Please download extDB3 and inlcude it following Installation step 4 below

## Details

1. Provides base for server hosts to get started and started properly

2. RestartServer.bat file included 
	- Handles all aspects of restart
	- Turns off firewall rule (no network = no players connected to server)
	- Makes sure everything has in fact been shut down / stopped
	- Starts back up Arma 3 server using startupParameters 
	- Starts back up Battleye Extended Controls
	- Turns back on firewall rule
	
3. BattlEye and BEC setup and configured
	- BattlEye bans.txt and BEServer.cfg with database
	- Config setup and ready
	- Scheduler setup and working
	
4. 64-bit extDB3 and Server plus Dynamic Simulation
	- Thanks to @CloudHax and @Torndeco for their public release of their work
	
5. Dont forget to download ExileMod client and server files at http://www.exilemod.com/downloads/
	- For more info on exile go here: http://www.exilemod.com/

6. Dont forget to download the latest version of extDB3 at: https://bitbucket.org/torndeco/extdb3/downloads/
	- For more info on extDB3 go here: https://bitbucket.org/torndeco/extdb3/wiki/Home

## Installation

NOTES:
			This repo is only for file structure
			This repo does not include any EXILE client or server pbo's
			This repo does not include any extDB3 server pbo's or dll's
			
1. Copy this repo to your C: drive

2. Copy the Arma 3 Server files from steam into your C: >> ExileServers >> ExileAltis folder

3. Add your full @Exile client addon and your @ExileServer server addons
	- Modify as needed C: >> ExileServers >> ExileAltis >> @ExileServer >> exile_server_config >> config.cpp
	- PBO up the exile_server_config folder

4. add your @extDB3 dll and pbo where the Placeholders are located

5. Setup your server name and other settings in the DonkeyPunch >> config.cfg

6. Add your MYSQL user and pw to the C: >> ExileServers >> ExileAltis >> @extDB3 >> extdb3-conf.ini

7. Right Click and Create Shortcut for C: >> ExileServers >> ExileAltis >> restartserver.bat
	- Right Click new shortcut >> click advanced >> click Run as Administrator

OPTIONAL:

8. Add your purchased infiStar antihack and configure it for your needs
	- Locate your passwords in C: >> ExileServers >> ExileAltis >> DonkeyPunch >> config.cfg

You now have a server setup on your Dedicated or PC environment.
You should already have knowledge setting up MySql and the exile database.
There are plenty of resources on the web and at exilemod.com for you to read.
I will not provide support on setting up mysql servers, read above comment for more info.


## Credits

- ExileMod Development Team
- BIS Development Team
- Torndeco
- CloudHax
- DPCG Contributors
- and anyone else I might not have listed here!

## TROUBLESHOOTING

If you have issues with BEC connecting to your server, edit the IP address for your server in these files below
1. C: >> ExileServers >> ExileAltis >> battleye >> beserver_x64.cfg
2. C: >> ExileServers >> ExileAltis >> battleye >> BEC >> Config >> config.cfg