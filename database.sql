CREATE DATABASE IF NOT EXISTS dbaudax;
USE audax;

CREATE TABLE IF NOT EXISTS users(
id 			mediumint not null auto_increment,
name		varchar(100),
email		varchar(255),
password	varchar(255),
CONSTRAINT pk_users PRIMARY KEY(id)
)ENGINE=InnoDb;

INSERT INTO users VALUES(NULL, 'David', 'david@gmail.com', 'david001');

CREATE TABLE IF NOT EXISTS contratos(
id 			mediumint not null auto_increment,
tipo		varchar(255),
cliente_id  mediumint,
CONSTRAINT pk_contratos PRIMARY KEY(id),
CONSTRAINT fk_contratos_cliente FOREIGN KEY (cliente_id) REFERENCES clientes(id),
)ENGINE=InnoDb;

INSERT INTO contratos VALUES(NULL, 'Indefinido', 1);
INSERT INTO contratos VALUES(NULL, 'Temporal', 1);

CREATE TABLE IF NOT EXISTS clientes(
id 			mediumint not null auto_increment,
nombre		varchar(255),
CONSTRAINT pk_clientes PRIMARY KEY(id)
)ENGINE=InnoDb;

INSERT INTO clientes VALUES(NULL, 'EL PEDREGAL, SCP');
