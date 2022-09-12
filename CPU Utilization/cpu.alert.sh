#### Simple Bash Script to get Alert Whenever CPU Usage get 70% Above ####

#/bin/bash

*/5 * * * * /usr/bin/cat /proc/loadavg | awk '{print $1}' | awk '{ if($1 > 70) printf("Current CPU Utilization is: %.2f%\n"), $0;}' | mail -s "High CPU Alert" XXXXX@gmail.com
