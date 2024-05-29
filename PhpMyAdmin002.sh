# http://localhost/phpmyadmin

# Blank White page instead of login screen, Special version 已經安裝圖書庫，仍然顯示全白
## solution->(){
###It looks like your php module is missing/not working in apache2 web server. Try doing steps 1-4 as suggested in:$
apt-get install libapache2-mod-phpX.X
sudo a2enmod phpx.x
###if there is any other mods conflicts whit it, use this `sudo a2dismod xxx`
sudo service apache2 reload
### >} else {
### Check your Apache's **available modules** using `ls /etc/apache2/mods-available` and **enabled modules** using `ls /etc/apache2/modes-enabled` and compare the contents. Check [this screenshot of both commands](https://ibb.co/Tvhkncq) and note the circles. I have both PHP 8.0 and 8.2 installed/available, but only 8.2 enabled.
### Add `Include /etc/phpmyadmin/apache.conf` to your `/etc/apache2/apache2.conf` file.
>}
>
