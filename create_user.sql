-- create_user.sql

CREATE USER 'prakashv'@'%' IDENTIFIED BY 'Mysql@Aug2024';
GRANT ALL PRIVILEGES ON *.* TO 'prakashv'@'%' WITH GRANT OPTION;

CREATE USER 'prakashv'@'172.17.0.1' IDENTIFIED BY 'Mysql@Aug2024';
GRANT ALL PRIVILEGES ON *.* TO 'prakashv'@'172.17.0.1' WITH GRANT OPTION;

CREATE USER 'prakashv'@'localhost' IDENTIFIED BY 'Mysql@Aug2024';
GRANT ALL PRIVILEGES ON *.* TO 'prakashv'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;
