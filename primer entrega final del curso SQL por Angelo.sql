CREATE DATABASE primera_entrega_proyecto_final;
USE primera_entrega_proyecto_final;

CREATE TABLE id_tipo_contenido (
id_tipo_contenido int NOT NULL AUTO_INCREMENT,
tipo_contenido VARCHAR(30) NOT NULL,
PRIMARY KEY(id_tipo_contenido)
);

INSERT INTO id_tipo_contenido
VALUES  
(NULL , 'ID_aprendizaje'),
(NULL , 'ID_musica'),
(NULL , 'ID_streaming'),
(NULL , 'ID_noticias'),
(NULL , 'ID_gameplays'),
(NULL , 'ID_peliculas'),
(NULL , 'ID_deportes'),
(NULL , 'ID_tendencias');

# CREACION TABLAS DE PELICULAS

CREATE TABLE peliculas (
ID_genero_pelicula INT NOT NULL AUTO_INCREMENT,
tipo_genero_pelicula VARCHAR(30) NOT NULL,
PRIMARY KEY (ID_genero_pelicula)
);

INSERT INTO peliculas
VALUES  
(NULL , 'ID_Terror'),
(NULL , 'ID_Accion'),
(NULL , 'ID_Drama'),
(NULL , 'ID_Infantil');

CREATE TABLE pelis_terror (
id_peli_terror INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
director VARCHAR(50) NOT NULL,
PRIMARY KEY (id_peli_terror)
);

INSERT INTO pelis_terror
VALUES  
(NULL , 'Chuky',  '2h 15min', '2004', 'Beatriz Perez'),
(NULL , 'El Aro', '2h 30min' , 2011, 'Juan Reyes');


CREATE TABLE pelis_accion (
id_peli_accion INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
director VARCHAR(50) NOT NULL,
PRIMARY KEY (id_peli_accion)
);

INSERT INTO pelis_accion
VALUES  
(NULL , 'Mision Imposible',  '1h 50min', '2008', 'Andres Gomez'),
(NULL , 'Matrix', '2h 10min' , 2021, 'Oscar Martinez');


CREATE TABLE pelis_drama (
id_peli_drama INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
director VARCHAR(50) NOT NULL,
PRIMARY KEY (id_peli_drama)
);

INSERT INTO pelis_drama
VALUES  
(NULL , 'Romeo y Julieta',  '2h 10min', '2003', 'Pepito Perez'),
(NULL , 'Soy Leyenda', '2h 40min' , '2010', 'Fabian Leal');


CREATE TABLE pelis_infantil (
id_peli_infantil INT NOT NULL AUTO_INCREMENT,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
director VARCHAR(50) NOT NULL,
PRIMARY KEY (id_peli_infantil)
);

INSERT INTO pelis_infantil
VALUES  
(NULL , 'Toy Story',  '3h 10min', '2020', 'Jose Reina'),
(NULL , 'Los Increibles 2', '3h 00min' , '2021', 'Facundo Diaz');

# CREACION TABLA APRENDIZAJE

CREATE TABLE ID_aprendizaje (
id_tipo_aprendizaje INT NOT NULL AUTO_INCREMENT,
aprendizaje VARCHAR(30) NOT NULL,
PRIMARY KEY (id_tipo_aprendizaje)
);

INSERT INTO ID_aprendizaje
VALUES  
(NULL , 'Cocina'),
(NULL , 'Estudio');

CREATE TABLE ID_cocina (
id_tipo_cocina INT NOT NULL AUTO_INCREMENT,
cocina VARCHAR(30) NOT NULL,
PRIMARY KEY (id_tipo_cocina)
);

INSERT INTO ID_cocina
VALUES  
(NULL , 'Cocina Francesa'),
(NULL , 'Cocina China');

CREATE TABLE ID_estudio (
id_tipo_estudio INT NOT NULL AUTO_INCREMENT,
estudio VARCHAR(30) NOT NULL,
PRIMARY KEY (id_tipo_estudio)
);

INSERT INTO ID_estudio
VALUES  
(NULL , 'Historia'),
(NULL , 'Matematicas');


# Creacion tabla genero musica

CREATE TABLE cancion (
id_cancion INT NOT NULL AUTO_INCREMENT,
genero_musical VARCHAR(30) NOT NULL,
nombre VARCHAR(100) NOT NULL,
duracion VARCHAR(15) NOT NULL,
anio VARCHAR(10) NOT NULL,
artista VARCHAR(50) NOT NULL,
PRIMARY KEY (id_cancion)
);

INSERT INTO cancion
VALUES  
(NULL , 'rock', 'Sweet Child on', '5min 00sgs','1992', 'Guns and Roses'),
(NULL , 'rock', 'Its my life', '3min 20sgs ','1997', 'Bon Jovi'),
(NULL , 'electronica' ,'Wake me up', '4min 10sgs','2014', 'Avicii'),
(NULL , 'electronica' ,'Rise Up', '3min 15sgs ','2009', 'Yves Larock');

# Creacion tabla VIVO

CREATE TABLE ID_vivo (
id_transmision INT NOT NULL AUTO_INCREMENT,
transimision VARCHAR(30) NOT NULL,
PRIMARY KEY (id_transmision)
);

INSERT INTO ID_vivo
VALUES  
(NULL , 'juegos'),
(NULL , 'charlas');

# Creacion tabla NOTICIAS

CREATE TABLE ID_noticias (
id_canal INT NOT NULL AUTO_INCREMENT,
canal VARCHAR(30) NOT NULL,
PRIMARY KEY (id_canal)
);

INSERT INTO ID_noticias
VALUES  
(NULL , 'TN'),
(NULL , 'A24');

# Creacion tabla VIDEOJUEGOS

CREATE TABLE ID_juegos_consolas (
id_consola INT NOT NULL AUTO_INCREMENT,
nombre_consola VARCHAR(30) NOT NULL,
juego VARCHAR(30) NOT NULL,
PRIMARY KEY (id_consola)
);

INSERT INTO ID_juegos_consolas
VALUES  
(NULL , 'X-BOX ONE', 'THE LAST OF US'),
(NULL , 'Play Station 4', 'FIFA 2022');


# Creacion tabla PUBLICO

CREATE TABLE ID_publico (
id_tipo_publico INT NOT NULL AUTO_INCREMENT,
tipo_publico VARCHAR(30) NOT NULL,
PRIMARY KEY (id_tipo_publico)
);

INSERT INTO ID_publico
VALUES  
(NULL , 'ninios'),
(NULL , 'jovenes'),
(NULL , 'adultos'),
(NULL , 'tercera edad');

# Creacion tabla FORMAS_DE_PAGO

CREATE TABLE id_pagos (
id_canal INT NOT NULL AUTO_INCREMENT,
canal VARCHAR(30) NOT NULL,
video VARCHAR(30) NOT NULL,
reproducciones VARCHAR(30) NOT NULL,
likes VARCHAR(30) NOT NULL,
publicitado VARCHAR(30) NOT NULL,
USD_por_cada_200_reproduc VARCHAR(30) NOT NULL,
TOTAL VARCHAR(30) NOT NULL,
cuenta_bancaria VARCHAR(30) NOT NULL,
banco VARCHAR(30) NOT NULL,
PRIMARY KEY (id_canal)
);

INSERT INTO id_pagos
VALUES  
(NULL , 'Cocina con Pepito', '3 recetas para amigos','1h 10min', '50.000', '35.000', 'UALA','1','USD 250', '00000123456789321654' 'Santander Rio Argentina'),
(NULL , 'INVICTO 123', 'Vence a todos en Fornite', '2h 05min', '100.000', '50.000', 'COLGATE','1','USD 500' ,'0000099875678645132654','BBVA Mexico' );

