pg_ctl -D /usr/local/var/postgres start
osascript proygrad-finder.applescript
subl "/Users/gonzalomelo/Kona/proy-grad/Proyecto Calidad del Aire"
gittower "/Users/gonzalomelo/Kona/proy-grad/Proyecto Calidad del Aire"
osascript proygrad-terminal.applescript
xattr -dr com.apple.quarantine 'Data Integration.app'
xattr -dr com.apple.quarantine 'Schema_Workbench.app'
open -a 'Data Integration'
open -a 'pgAdmin3'
open -a 'Schema_Workbench'
cd '/Users/gonzalomelo/ProyectoApps/pentaho-server'
sh start-pentaho.sh
