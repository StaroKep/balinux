#!/bin/bash

# Ищем apache на машине и записываем результат во временный файл
dpkg -l apache2 | tail -n -1 > temporary_file
# Если в файле есть слово "apache", то верноется кол-во раз
# сколько это слово встретилось, иначе 0
is_apache=`grep -c apache temporary_file`

# Если apache не установлен
if [ "$is_apache" == "0" ]; then
	# Устанавливаем его
	echo "1) Необходим Apache! Для того, чтобы его установить введите пароль:"
	echo "--- --- --- --- --- --- --- --- --- --- ---"
	eval "sudo apt-get install apache2"
	echo "--- --- --- --- --- --- --- --- --- --- ---"

else
	# Иначе выводим сообщение, что apache уже установлен
	echo "1) Apache установлен"
fi
