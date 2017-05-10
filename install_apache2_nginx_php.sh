#!/bin/bash

eval "sudo apt-get update"

# 1. Устанавливаем Nginx
eval "sudo apt-get install nginx"
# 2. Копируем файл виртуального сервера в конфиг Nginx'a
eval "sudo cp `dirname $0`/balinux_k_eremin /etc/nginx/sites-available/"
# 3. Создаем ссылку
eval "sudo ln -s /etc/nginx/sites-available/balinux_k_eremin /etc/nginx/sites-enabled/balinux_k_eremin"
# 4. Создаем директорию для проекта
eval "sudo mkdir /var/www/balinux_k_eremin"
# 5. Даем полный доступ к этой папке
eval "sudo chmod -R 777 /var/www/balinux_k_eremin"
# 6.
eval "sudo cp `dirname $0`/index.html /var/www/balinux_k_eremin"
# 10.
eval "sudo service nginx start"
# 11.
eval "sudo service nginx restart"

# 12. Устанавливаем apache2
eval "sudo apt-get install apache2"
# 13. 
eval "sudo cp `dirname $0`/ports.conf /etc/apache2/"
# 14. 
eval "sudo cp `dirname $0`/balinux_k_eremin.conf /etc/apache2/sites-available/"
# 15.
eval "sudo a2ensite balinux_k_eremin"
# 16. Устанавливаем php
eval "sudo apt-get install php7.0 libapache2-mod-php7.0"
# 17. Перезагружаем apache и nginx
eval "sudo service apache2 start"
eval "sudo service apache2 restart"
eval "sudo service nginx restart"

# 18.
eval "sudo mkdir /var/www/balinux_k_eremin/sysinfo"
eval "sudo chmod -R 777 /var/www/balinux_k_eremin/sysinfo"
eval "sudo cp `dirname $0`/index.php /var/www/balinux_k_eremin/sysinfo"

# Устанавлвиаем lynx
eval "sudo apt-get install lynx"
# Устанавлвиаем iostat
eval "sudo apt-get install sysstat"








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