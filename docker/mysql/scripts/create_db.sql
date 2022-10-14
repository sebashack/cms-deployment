CREATE DATABASE wordpressdb;
USE wordpressdb;

CREATE USER wordpress@0.0.0.0 IDENTIFIED BY 'secret';

GRANT ALL PRIVILEGES
    ON wordpress.*
    TO wordpress@0.0.0.0;

FLUSH PRIVILEGES;
