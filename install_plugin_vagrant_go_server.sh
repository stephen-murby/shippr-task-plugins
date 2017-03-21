# Find Go Vagrant Server information here.
# https://www.gocd.io/2015/08/05/Go-Sample-Virtualbox/


--- Local Machine ---
cd /Users/stephen.murby/repos/git/autotrader-shippr-task-plugin
./gradlew jar  
scp -P 2222 build/libs/autotrader-shippr-task-plugin-0.0.1.jar vagrant@127.0.0.1:.

--- Vagrant Guest ---
vagrant up
vagrant ssh
rm /var/lib/go-server/plugins/external/autotrader-shippr-task-plugin-0.0.1.jar
mv ~/autotrader-shippr-task-plugin-0.0.1.jar /var/lib/go-server/plugins/external/
/etc/init.d/go-server restart
