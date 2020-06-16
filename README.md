# Percona XtraBackup for Windows
  
Backup MySQL on Windows hosts using xtrabackup  
  
Latest version is still using XtraBackup 2.4 for backwards compatibility  
  
*Note: Using Tag 8.0 does not work on older versions of MySQL, if you are on MySQL < 8 use 'latest' or '2.4':  
"Percona XtraBackup 8.0 does not support making backups of databases created in versions prior to 8.0 of MySQL, Percona Server for MySQL or Percona XtraDB Cluster. As the changes that MySQL 8.0 introduced in data dictionaries, redo log and undo log are incompatible with previous versions, it is currently impossible for Percona XtraBackup 8.0 to also support versions prior to 8.0."  
  
Enable drive sharing, set locations, example below. Standard XtraBackup commands, Full and Incremental backups  
  
MySQL Data: C:\MYSQL\DATA  
Backup Dir: D:\OPT\BACKUP  
  
Command:
````
docker run --rm -it -v C:/mysql/data:/var/lib/mysql -v D:/OPT/BACKUP:/opt/xtrabackup bshp/xtrabackup --backup --host=10.20.10.105 --user=root --password=SuperSecret --datadir=/var/lib/mysql/ --target-dir=/opt/xtrabackup/
````  
  
For a complete list of options and examples  
[https://www.percona.com/doc/percona-xtrabackup/index.html](https://www.percona.com/doc/percona-xtrabackup/index.html)  
