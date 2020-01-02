CREATE DATABASE IF NOT EXISTS api_rest_laravel;
USE api_rest_laravel;

CREATE DATABASE IF NOT EXISTS users(
id                 int(255) auto_increment not null,
name               varchar(50) NOT NULL,
surname            varchar(100),
role               varchar(20),
email              varchar(255) NOT NULL,
password           varchar(255) NOT NULL,
description        text,
image              varchar(255)
create_at          datetime DEFAULT NULL,
updated_at         datetime DEFAULT NULL,
remember_token     varchar(255),
CONSTRAINT PK_users PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS categories(
id                 int(255) auto_increment NOT NULL,
name               varchar(100) NOT NULL,
create_at          datetime DEFAULT NULL,
updated_at         datetime DEFAULT NULL,
CONSTRAINT PK_categries PRIMARY KEY(id)
)ENGINE=InnoDb;

CREATE TABLE IF NOT EXISTS posts(
id                 int(255) auto_increment NOT NULL,
user_id            int(255) NOT NULL,
category_id        int(255) NOT NULL,
title              varchar(255) NOT NULL,
content            text NOT NULL,
image              varchar(255),
create_at          datetime DEFAULT NULL,
updated_at         datetime DEFAULT NULL,
CONSTRAINT PK_posts PRIMARY KEY(id),
CONSTRAINT FK_posts_user FOREIGN KEY(user_id) REFERENCES users(id)
CONSTRAINT FK_posts_category FOREIGN KEY(category_id) REFERENCES categories(id)
)ENGINE=InnoDb;