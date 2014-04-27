mylistings
==========

Web Arch Assignment 2

Create DB

mysql> create database mylistings default charset utf8 default collate utf8_bin;
Query OK, 1 row affected (0.00 sec)

mysql> grant all on mylistings.* to 'webarch'@'localhost' identified by 'webarch';
Query OK, 0 rows affected (0.00 sec)

mysql> grant all on mylistings.* to 'webarch'@'localhost.localdomain' identified by 'webarch';
Query OK, 0 rows affected (0.00 sec)
