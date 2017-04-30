#!/bin/bash

eval "sudo apt-get update"

# 1. Устанавливаем Nginx
eval "sudo apt-get install nginx"
# 2.
eval "echo 'server { listen 127.0.0.96:80; root /var/www/balinux_k_eremin; server_name balinux_k_eremin.local; location / { try_files $uri $uri/ /index.php; } location ~ \.php$ { proxy_set_header X-Real-IP  $remote_addr; proxy_set_header X-Forwarded-For $remote_addr; proxy_set_header Host $host; proxy_pass http://127.0.0.96:8080; } location ~ /\.ht { deny all; } }' > ~/balinux_k_eremin"
# 3.
eval "sudo cp ~/balinux_k_eremin /etc/nginx/sites-available/"
# 4. 
eval "rm -f ~/balinux_k_eremin"
# 5.
eval "sudo ln -s /etc/nginx/sites-available/balinux_k_eremin /etc/nginx/sites-enabled/balinux_k_eremin"
# 6.
eval "sudo mkdir /var/www/balinux_k_eremin"
# 7.
eval "sudo chmod 777 /var/www/balinux_k_eremin"
# 8.
eval "echo 'Hello, World!' > /srv/www/balinux_k_eremin/index.html"










# # Ищем apache на машине и записываем результат во временный файл
# dpkg -l apache2 | tail -n -1 > temporary_file
# # Если в файле есть слово "apache", то верноется кол-во раз
# # сколько это слово встретилось, иначе 0
# is_apache=`grep -c apache temporary_file`

# # Если apache не установлен
# if [ "$is_apache" == "0" ]; then
# 	# Устанавливаем его
# 	echo "1) Необходим Apache!"
# 	echo "--- --- --- --- --- --- --- --- --- --- ---"
# 	eval "sudo apt-get update"
# 	eval "sudo apt-get install apache2"
# 	echo "--- --- --- --- --- --- --- --- --- --- ---"

# else
# 	# Иначе выводим сообщение, что apache уже установлен
# 	echo "1) Apache установлен"
# 	echo "--- --- --- --- --- --- --- --- --- --- ---"
# fi

# # Устанавливаем php
# echo "2) Устанавливаем php и его дополнительный модуль libapache2-mod-php"
# echo "--- --- --- --- --- --- --- --- --- --- ---"
# eval "sudo apt-get install php libapache2-mod-php"

# # # Останавливаем Apache
# # echo "3) Останавливаем Apache!"
# # echo "--- --- --- --- --- --- --- --- --- --- ---"
# # eval "sudo service apache2 stop"

# # # Устанавливаем nginx
# # echo "4) Устанавливаем Nginx"
# # echo "--- --- --- --- --- --- --- --- --- --- ---"
# # eval "sudo apt-get install nginx"

# # Устанавливаем lynx
# echo "И-и-и-и. Устанавливаем lynx."
# eval "sudo apt-get install lynx"
# echo "--- --- --- --- Ура! Все готово! --- --- --- ---"

# # Устанавливаем права на папку
# eval "sudo chmod -R 777 /var/www/html/*"

# sudo apt-get install apache2
# sudo service apache2 status
# sudo service apache2 stop

# sudo apt-get install nginx
# sudo service nginx status
# cd /etc/nginx/sites-available
# sudo nano balinux

# Записываем данные 
# ln -s - создаем ссылку на сервер
# 	sudo ln -s /etc/nginx/sites-available/balinux /etc/nginx/sites-enabled/balinux

# sudo mkdir /var/www/balinux - создаем папку для проекта
# sudo chmod 777 /var/www/balinux - даем полный доступ к папке

# sudo nano /etc/apache2/ports.conf - указываем порт для apache
# Копируем  sudo cp 000-default.conf balinux.conf
# sudo nano balinux.conf - меняем порт и директорию
# sudo a2ensite balinux - активируем сайт
# sudo apt-get install php7.0  - устанавливаем php
# sudo apt-get install libapache2-mod-php7.0
# Перезагружаем apache2 ->	sudo service apache2 restart
# Перезагружаем nginx -> sudo service nginx restart