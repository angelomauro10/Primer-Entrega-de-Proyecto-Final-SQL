CREATE DATABASE primera_entrega_proyecto_final;
USE primera_entrega_proyecto_final;

CREATE TABLE id_tipo_contenido (
id_tipo_contenido INT NOT NULL,
tipo_contenido VARCHAR(30) NOT NULL,
PRIMARY KEY(id_tipo_contenido)
);

INSERT INTO id_tipo_contenido
VALUES  
(1 , 'ID_aprendizaje'),
(2 , 'ID_musica'),
(3 , 'ID_streaming'),
(4 , 'ID_noticias'),
(5 , 'ID_gameplays'),
(6 , 'ID_peliculas'),
(7 , 'ID_deportes');

# CREACION TABLAS DE PELICULAS

CREATE TABLE id_genero_pelicula(
id_genero_pelicula INT NOT NULL,
tipo_genero_pelicula VARCHAR(30) NOT NULL,
foreign_genero_peli INT NULL,
PRIMARY KEY (id_genero_pelicula),
FOREIGN KEY (foreign_genero_peli) REFERENCES id_tipo_contenido (id_tipo_contenido)
);

INSERT INTO id_genero_pelicula
VALUES  
(1 , 'ID_Terror', NULL),
(2 , 'ID_Accion', NULL),
(3 , 'ID_Drama', NULL),
(4 , 'ID_Infantil', NULL);

CREATE TABLE pelis_terror (
id_peli_terror INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
director VARCHAR(50) NOT NULL,
foreign_terror INT NULL,
PRIMARY KEY (id_peli_terror),
FOREIGN KEY (foreign_terror) REFERENCES id_genero_pelicula (id_genero_pelicula)
);

INSERT INTO pelis_terror
VALUES  
(NULL , 'Chuky',  '2h 15min', '2004', 'Beatriz Perez', NULL),
(NULL , 'El Aro', '2h 30min' , 2011, 'Juan Reyes', NULL);


CREATE TABLE pelis_accion (
id_peli_accion INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
director VARCHAR(50) NOT NULL,
foreign_accion INT NULL,
PRIMARY KEY (id_peli_accion),
FOREIGN KEY (foreign_accion) REFERENCES id_genero_pelicula (id_genero_pelicula)
);

INSERT INTO pelis_accion
VALUES  
(NULL , 'Mision Imposible',  '1h 50min', '2008', 'Andres Gomez', NULL),
(NULL , 'Matrix', '2h 10min' , 2021, 'Oscar Martinez', NULL);


CREATE TABLE pelis_drama (
id_peli_drama INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
director VARCHAR(50) NOT NULL,
foreign_drama INT NULL,
PRIMARY KEY (id_peli_drama),
FOREIGN KEY (foreign_drama) REFERENCES id_genero_pelicula (id_genero_pelicula)
);

INSERT INTO pelis_drama
VALUES  
(NULL , 'Romeo y Julieta',  '2h 10min', '2003', 'Pepito Perez', NULL),
(NULL , 'Soy Leyenda', '2h 40min' , '2010', 'Fabian Leal', NULL);


CREATE TABLE pelis_infantil (
id_peli_infantil INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
director VARCHAR(50) NOT NULL,
foreign_infantil INT NULL,
PRIMARY KEY (id_peli_infantil),
FOREIGN KEY (foreign_infantil) REFERENCES id_genero_pelicula (id_genero_pelicula)
);

INSERT INTO pelis_infantil
VALUES  
(NULL , 'Toy Story',  '3h 10min', '2020', 'Jose Reina', NULL),
(NULL , 'Los Increibles 2', '3h 00min' , '2021', 'Facundo Diaz', NULL);

# CREACION TABLA APRENDIZAJE

CREATE TABLE ID_aprendizaje (
id_tipo_aprendizaje INT NOT NULL AUTO_INCREMENT,
aprendizaje VARCHAR(30) NOT NULL,
foreign_aprendizaje INT NULL,
PRIMARY KEY (id_tipo_aprendizaje),
FOREIGN KEY (foreign_aprendizaje) REFERENCES id_tipo_contenido (id_tipo_contenido)
);

INSERT INTO ID_aprendizaje
VALUES  
(NULL , 'Cocina', NULL),
(NULL , 'Estudio', NULL);

CREATE TABLE ID_cocina (
id_tipo_cocina INT NOT NULL AUTO_INCREMENT,
cocina VARCHAR(30) NOT NULL,
foreign_cocina INT NULL,
PRIMARY KEY (id_tipo_cocina),
FOREIGN KEY (foreign_cocina) REFERENCES ID_aprendizaje(id_tipo_aprendizaje)
);

INSERT INTO ID_cocina
VALUES  
(NULL , 'Cocina Francesa', NULL),
(NULL , 'Cocina China', NULL);

CREATE TABLE ID_estudio (
id_tipo_estudio INT NOT NULL AUTO_INCREMENT,
estudio VARCHAR(30) NOT NULL,
foreign_estudio INT NULL,
PRIMARY KEY (id_tipo_estudio),
FOREIGN KEY (foreign_estudio) REFERENCES ID_aprendizaje(id_tipo_aprendizaje)
);

INSERT INTO ID_estudio
VALUES  
(NULL , 'Historia', NULL),
(NULL , 'Matematicas', NULL);


# Creacion tabla genero musica

CREATE TABLE cancion (
id_cancion INT NOT NULL AUTO_INCREMENT,
genero_musical VARCHAR(30) NOT NULL,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
artista VARCHAR(50) NOT NULL,
foreign_cancion INT NULL,
PRIMARY KEY (id_cancion),
FOREIGN KEY (foreign_cancion) REFERENCES id_tipo_contenido(id_tipo_contenido)
);

INSERT INTO cancion
VALUES  
(NULL , 'rock', 'Sweet Child on', '5min 00sgs','1992', 'Guns and ',  NULL),
(NULL , 'rock', 'Its my life', '3min 20sgs ','1997', 'Bon Jovi', NULL),
(NULL , 'electronica' ,'Wake me up', '4min 10sgs','2014', 'Avicii' , NULL),
(NULL , 'electronica' ,'Rise Up', '3min 15sgs ','2009', 'Yves Larock' , NULL);

# Creacion tabla VIVO

CREATE TABLE ID_vivo (
id_transmision INT NOT NULL AUTO_INCREMENT,
transimision VARCHAR(30) NOT NULL,
foreign_vivo INT NULL,
PRIMARY KEY (id_transmision),
FOREIGN KEY (foreign_vivo) REFERENCES id_tipo_contenido(id_tipo_contenido)
);

INSERT INTO ID_vivo
VALUES  
(NULL , 'juegos', NULL),
(NULL , 'charlas', NULL);

# Creacion tabla NOTICIAS

CREATE TABLE ID_noticias (
id_canal INT NOT NULL AUTO_INCREMENT,
canal VARCHAR(30) NOT NULL,
foreign_noticias INT NULL,
PRIMARY KEY (id_canal),
FOREIGN KEY (foreign_noticias) REFERENCES id_tipo_contenido(id_tipo_contenido)
);

INSERT INTO ID_noticias
VALUES  
(NULL , 'TN', NULL),
(NULL , 'A24', NULL);

# Creacion tabla VIDEOJUEGOS

CREATE TABLE ID_juegos_consolas (
id_consola INT NOT NULL AUTO_INCREMENT,
nombre_consola VARCHAR(30) NOT NULL,
juego VARCHAR(30) NOT NULL,
foreign_juego INT NULL,
PRIMARY KEY (id_consola),
FOREIGN KEY (foreign_juego) REFERENCES id_tipo_contenido(id_tipo_contenido)
);

INSERT INTO ID_juegos_consolas
VALUES  
(NULL , 'X-BOX ONE', 'THE LAST OF US', null),
(NULL , 'Play Station 4', 'FIFA 2022', null);


# Creacion tabla PUBLICO

CREATE TABLE ID_publico (
id_tipo_publico INT NOT NULL AUTO_INCREMENT,
tipo_publico VARCHAR(30) NOT NULL,
foreign_publico INT NULL,
PRIMARY KEY (id_tipo_publico),
FOREIGN KEY (foreign_publico) REFERENCES id_tipo_contenido(id_tipo_contenido)
);

INSERT INTO ID_publico
VALUES  
(NULL , 'ninios', NULL),
(NULL , 'jovenes', NULL),
(NULL , 'adultos', NULL),
(NULL , 'tercera edad', NULL);

# Creacion tabla FORMAS_DE_PAGO

CREATE TABLE id_canal (
id_canal INT NOT NULL AUTO_INCREMENT,
canal VARCHAR(30) NOT NULL,
video VARCHAR(30) NOT NULL,
duracion VARCHAR(30) NOT NULL,
reproducciones VARCHAR(30) NOT NULL,
likes VARCHAR(30) NOT NULL,
publicitado VARCHAR(30) NOT NULL,
foreign_canal INT NULL,
PRIMARY KEY (id_canal),
FOREIGN KEY (foreign_canal) REFERENCES id_tipo_contenido(id_tipo_contenido)
);

INSERT INTO id_canal
VALUES  
(NULL , 'Cocina con Pepito', '3 recetas para amigos','1h 10min', '50.000', '35.000', 'UALA', NULL),
(NULL , 'INVICTO 123', 'Vence a todos en Fornite', '2h 05min', '100.000', '50.000', 'COLGATE', NULL);

CREATE TABLE id_pagos (
id_pago INT NOT NULL AUTO_INCREMENT,
USD_por_cada_200_reproduc VARCHAR(30) NOT NULL,
TOTAL VARCHAR(30) NOT NULL,
cuenta_bancaria VARCHAR(30) NOT NULL,
banco VARCHAR(30) NOT NULL,
foreign_pagos INT NULL,
PRIMARY KEY (id_pago),
FOREIGN KEY (foreign_pagos) REFERENCES id_canal(id_canal)
);

INSERT INTO id_pagos
VALUES
(NULL, '1','USD 250', '00000123456789321654','Santander Rio Argentina', NULL),
(NULL,'1','USD 500' ,'0000099875678645132654','BBVA Mexico', NULL);