#!/bin/bash

# Ищем apache на машине и записываем результат во временный файл
dpkg -l apache2 | tail -n -1 > temporary_file
# Если в файле есть слово "apache", то верноется кол-во раз
# сколько это слово встретилось, иначе 0
is_apache=`grep -c apache temporary_file`

# Если apache не установлен
if [ "$is_apache" == "0" ]; then
	# Устанавливаем его
	echo "1) Необходим Apache!"
	echo "--- --- --- --- --- --- --- --- --- --- ---"
	eval "sudo apt-get update"
	eval "sudo apt-get install apache2"
	echo "--- --- --- --- --- --- --- --- --- --- ---"

else
	# Иначе выводим сообщение, что apache уже установлен
	echo "1) Apache установлен"
	echo "--- --- --- --- --- --- --- --- --- --- ---"
fi

# Устанавливаем php
echo "2) Устанавливаем php и его дополнительный модуль libapache2-mod-php"
echo "--- --- --- --- --- --- --- --- --- --- ---"
eval "sudo apt-get install php libapache2-mod-php"

# Устанавливаем lynx
echo "И-и-и-и. Устанавливаем lynx."
eval "sudo apt-get install lynx"
echo "--- --- --- --- Ура! Все готово! --- --- --- ---"