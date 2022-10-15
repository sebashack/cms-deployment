CREATE DATABASE wordpressdb;
USE wordpressdb;

/* Change 127.0.0.1 to public EC2 instance IP addr */
CREATE USER wordpress@127.0.0.1 IDENTIFIED BY 'secret';

GRANT ALL PRIVILEGES
    ON wordpressdb.*
    TO wordpress@127.0.0.1;

FLUSH PRIVILEGES;
