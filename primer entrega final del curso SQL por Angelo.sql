CREATE DATABASE youtube_peliculas;
USE youtube_peliculas;

CREATE TABLE USUARIO (
id_usuario INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(30) NOT NULL,
apellido VARCHAR(30) NOT NULL,
DNI INT NOT NULL,
correo varchar(30) NOT NULL,
PRIMARY KEY (id_usuario)
);

INSERT INTO USUARIO 
VALUES
(NULL , 'Andres' , 'Gomez', 95123456, 'pepito123@hotmail.com'),
(NULL , 'Martin' , 'Vargas', 75123422, 'martinvargas@hotmail.com');

CREATE TABLE PUBLICO(
id_publico INT NOT NULL AUTO_INCREMENT,
infantil INT NULL,
juvenil INT NULL,
adulto INT NULL,
PRIMARY KEY(id_publico),
FOREIGN KEY (id_publico) REFERENCES USUARIO(id_usuario) 
);


INSERT INTO PUBLICO
VALUES
(NULL, NULL, 2, NULL),
(NULL, NULL, NULL, 3);


CREATE TABLE GENERO(
id_genero INT NOT NULL AUTO_INCREMENT,
accion INT NULL,
aventura INT NULL,
terror INT NULL,
PRIMARY KEY (id_genero),
FOREIGN KEY (id_genero) REFERENCES publico(id_publico)
);

INSERT INTO GENERO
VALUES
(NULL, 1, NULL, NULL),
(NULL, NULL, 2, NULL);


CREATE TABLE PELICULAS(
id_pelicula INT NOT NULL AUTO_INCREMENT,
nombre_pelicula VARCHAR(30) NOT NULL,
duracion VARCHAR(30) NOT NULL,
director VARCHAR(30) NOT NULL,
anio_estreno INT NOT NULL,
calificacion VARCHAR(30),
PRIMARY KEY(id_pelicula),
FOREIGN KEY(id_pelicula) REFERENCES GENERO(id_genero)
);

INSERT INTO  PELICULAS
VALUES
(NULL, 'The Avengers', '2H 30min', 'Pepito Perez', '2019','Excelente'),
(NULL, 'Mision Imposible', '2H 50min', 'Fulanita Equis', '2007','Buena');

CREATE TABLE PAGOS(
id_pagos INT NOT NULL AUTO_INCREMENT,
american_express INT NULL,
santander INT NULL,
bbva INT NULL,
tipo_tarjeta VARCHAR(30) NOT NULL,
numero_tarjeta VARCHAR(30) NOT NULL,
precio DECIMAL(5,2) NOT NULL,
PRIMARY KEY(id_pagos),
FOREIGN KEY(id_pagos) REFERENCES PELICULAS(id_pelicula)
);


INSERT INTO PAGOS
VALUES
(NULL, NULL, NULL, 3, 'credito', 1234567891, 899.99),
(NULL, 1, NULL, NULL, 'debito', 9876543219, 950.99);