DROP DATABASE IF EXISTS chat-app-soketio;

CREATE DATABASE chat-app-soketio;

USE chat-app-soketio;

CREATE TABLE login_info (
  id INTEGER AUTO_INCREMENT NOT NULL,
  user_name VARCHAR(255) NOT NULL,
  user_password VARCHAR(255) NOT NULL,
  isAdmin BOOLEAN DEFAULT false,
  PRIMARY KEY(id)
);

CREATE TABLE users (
  id INTEGER AUTO_INCREMENT NOT NULL,
  login_id INTEGER NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  display_name VARCHAR(30),
  avatar_dirct VARCHAR(30),
  PRIMARY KEY(id)
);

CREATE TABLE messages (
  id INTEGER AUTO_INCREMENT NOT NULL,
  user_id INTEGER NOT NULL,
  room_id INTEGER NOT NULL,
  message_body VARCHAR(300),
  PRIMARY KEY(id)
);

CREATE TABLE rooms (
  id INTEGER AUTO_INCREMENT NOT NULL,
  room_name VARCHAR(50),
  PRIMARY KEY(id)
);