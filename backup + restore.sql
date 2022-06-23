
mysqldump belajar_mysql --user root --password --result-file=D:/backup.mysql


mysql --user=root --password belajar_mysql < D:/backup.mysql


masuk sql dulu
source D:/backup.mysql
