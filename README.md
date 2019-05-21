# Percona XtraBackup for Windows

Backup MySQL on Windows hosts using xtrabackup

Enable drive sharing, set locations, example below. Standard XtraBackup commands, Full and Incremental backups

MySQL Data: C:\MYSQL\DATA

Backup Dir: D:\OPT\BACKUP

Command: docker run --rm -it -v C:/mysql/data:/var/lib/mysql -v D:/OPT/BACKUP:/opt/xtrabackup bshp/xtrabackup --backup --host=10.20.10.105 --user=root --password=SuperSecret --datadir=/var/lib/mysql/ --target-dir=/opt/xtrabackup/

For a complete list of options and examples
[https://www.percona.com/doc/percona-xtrabackup/index.html](https://www.percona.com/doc/percona-xtrabackup/index.html)
