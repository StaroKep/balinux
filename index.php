<!DOCTYPE html>
<html lang="ru">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="Refresh" content="1" />
	<title>balinux_k_eremin</title>
</head>
<body>

<?php 

// ---------------------
// Получаем load average
// ---------------------
	echo "<div>=== === === === === === === === === === ===</div>";
	$output = exec('uptime');
	$output = substr($output, strpos($output, "load average") + 12 );

	echo "<div><b>LOAD AVERAGE</b>" . $output;
	echo "<pre><br>                 |     |     |<br>";
	echo "                 1 мин.|     |<br>";
	echo "                       5 мин.|<br>";
	echo "                             15 мин. " . "</pre></div>";
	echo "<div>=== === === === === === === === === === ===</div><br>";
// =====================

// Выполняем iostat и записываем результат в файл iostat
exec('iostat > iostat');
// Получаем содержимое файла iostat как массив его строк
$iostat = @file("iostat");

// Убираем ненужные пробелы в строке CPU
$cpu_string = preg_replace("/  +/"," ", $iostat[3]); 
// Переводим строку в массив
$cpu = explode(" ", $cpu_string);

// Выводим данные о средней нагрузке CPU
// echo "<div>--- --- --- --- --- --- --- --- --- --- ---</div>";
echo "<div><b>Средняя загрузка CPU:</b><br> %user = $cpu[1]<br> %nice = $cpu[2]<br> %system = $cpu[3]<br> %iowait = $cpu[4]<br> %steal = $cpu[5]<br> %idle = $cpu[6]<br> </div>";
echo "<div>=== === === === === === === === === === ===</div><br>";


// Выводим данные о загрузке дисков
echo "<div><b>Загрузка дисков:</b><br><pre>$iostat[5]<br>$iostat[6]<br>$iostat[7]<br>$iostat[8]</pre></div>";
echo "<div>=== === === === === === === === === === ===</div><br>";



// // Добавить установку iostat
// 	echo "<pre>IOSTAT RESULT</pre>";
// 	echo "<pre>--- --- --- --- --- --- --- --- --- --- ---</pre>";
// 	exec('iostat > iostat');
// 	$file = file_get_contents("iostat");
// 	echo "<pre>$file</pre>";
// 	echo "<pre>=== === === === === === === === === === ===</pre><br>";




// Информация о дисках
	echo "<pre>ABOUT DISKS</pre>";
	echo "<pre>--- --- --- --- --- --- --- --- --- --- ---</pre>";
	exec('df > df');
	$disks = file_get_contents("df");
	echo "<pre>$disks</pre>";
	echo "<pre>=== === === === === === === === === === ===</pre><br>";

// Загрузка cpu
	echo "<pre>ABOUT CPU</pre>";
	echo "<pre>--- --- --- --- --- --- --- --- --- --- ---</pre>";
	echo "<pre>VMSTAT:</pre>";
	exec('vmstat > vmstat');
	$vmstat = file_get_contents("vmstat");
	echo "<pre>$vmstat</pre>";

	echo "<pre>MPSTAT:</pre>";
	exec('mpstat > mpstat');
	$mpstat = file_get_contents("mpstat");
	echo "<pre>$mpstat</pre>";
	echo "<pre>=== === === === === === === === === === ===</pre><br>";


?>
</body>
</html>

