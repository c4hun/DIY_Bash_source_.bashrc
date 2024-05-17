ls /etc/apache2/mod-available

ls /etc/apache2/mods-enabled

sudo a2enmod php8.3
systemctl restart apache2
sudo a2query -m php8.3


sudo a2dismod php8.2
systemctl restart apache2
sudo a2query -m php8.2
