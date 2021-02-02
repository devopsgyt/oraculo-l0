# CREATE DATABASE `biostar`;
grant all privileges on *.* to 'root'@'172.18.0.3' identified by 'biostar';
grant all privileges on *.* to 'biostar'@'172.18.0.3' identified by 'biostar';

SET GLOBAL innodb_default_row_format ='dynamic';
SET GLOBAL innodb_file_per_table=ON;