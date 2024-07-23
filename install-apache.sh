#!/bin/bash

sudo yum install httpd -y
sudo systemctl start httpd


#Change ownership of html directory to customize test page
cd /var/www/html
sudo chown -R $USER /var/www/html


sudo echo "<html><h1>Project Complete. Apache installation successful!</h1><br><h2>Clifton Weathers Jr</h2></html>" > index.html
