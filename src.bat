@echo off
set startTime=%time%
ECHO Starting the IP Scan
FOR /L %%i IN (1,1,2) DO @(
ECHO Pinging IP Range: 192.168.%%i._
FOR /L %%z IN (1,1,10) DO @(
echo Pinging IP: 192.168.%%i.%%z
ping -n 1 -w 500 192.168.%%i.%%z | FIND /i "Reply">>IPScanResults.txt
)
)
ECHO Run Time = %startTime% to %time%>>IPScanResults.txt
ECHO *** IP Scan Complete. ***
ECHO Check the file called IPScanResults.txt to see the results
ECHO Run Time = %startTime% to %	time%
