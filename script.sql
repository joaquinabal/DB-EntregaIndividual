CREATE DATABASE `DB_Notas`

USE `DB_Notas`

CREATE TABLE `Usuarios` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `username` VARCHAR(50) NOT NULL,
   `email` VARCHAR(50) NOT NULL,
   PRIMARY KEY (`id`)
);

CREATE TABLE `Notas` (
   `id` INT NOT NULL,
   `id_usuario` INT NOT NULL,
   `titulo` VARCHAR(100) NOT NULL,
   `fecha_creacion` DATE NOT NULL,
   `fecha_ult_modif` DATE NOT NULL,
   `descripcion` TEXT NOT NULL,
   `perma` INT NOT NULL DEFAULT 0,
   PRIMARY KEY (`id`)
);

CREATE TABLE `Categorias` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `tipo_cat` VARCHAR(50) NOT NULL,
   `` ,
   PRIMARY KEY (`id`)
);

CREATE TABLE `id_nota_categoria` (
   `id` INT NOT NULL AUTO_INCREMENT,
   `id_categoria` INT NOT NULL AUTO_INCREMENT,
   `id_nota` INT NOT NULL AUTO_INCREMENT,
   PRIMARY KEY (`id`)
);


ALTER TABLE `Notas` ADD CONSTRAINT `FK_c8c8c322-1238-4467-8cc7-a155274aaf3c` FOREIGN KEY (`id_usuario`) REFERENCES `Usuarios`(`id`)  ;

ALTER TABLE `id_nota_categoria` ADD CONSTRAINT `FK_e9011696-0c03-43c0-8473-9bf6c94a28a1` FOREIGN KEY (`id_nota`) REFERENCES `Notas`(`id`)  ;

ALTER TABLE `id_nota_categoria` ADD CONSTRAINT `FK_5219592a-af2a-4f6e-9b99-a789c50d1b07` FOREIGN KEY (`id_categoria`) REFERENCES `Categorias`(`id`)  ;


INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Joaquin Abal','joabal97@gmail.com'); /* -1- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Pedro Gutierrez','perrogut@gmail.com'); /* -2- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Joel Rodriguez Acosta','joelocrazy@gmail.com'); /* -3- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Sebastian Vazquez','brvazquez@gmail.com'); /* -4- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Sabrina Turco','sabriturco@gmail.com'); /* -5- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Penelope Salmondo','pnlp1997@gmail.com'); /* -6- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Ignacio Abal','nachitoabal@gmail.com'); /* -7- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Juan Cruz Perez','jcp2001@gmail.com'); /* -8- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Sol Diaz','solcitodiaz@gmail.com'); /* -9- */
INSERT INTO DB_Notas.Usuarios(username, email) VALUES('Emanuel Belgrano','manubelgra@gmail.com'); /* -10- */


INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Trabajo'); /* -1- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Ocio'); /* -2- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Universidad'); /* -3- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('WoW'); /* -4- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Comida'); /* -5- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Compras'); /* -6- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Salud'); /* -7- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Banco'); /* -8- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Entrenamiento'); /* -9- */
INSERT INTO DB_Notas.Categorias(tipo_cat) VALUES('Otros'); /* -10- */


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Entrega Informe','Hay que entregar el informe de análisis para el martes 23-11 sin falta','2021/11/05','2021/11/17',0,4);

INSERT INTO DB_Notas.id_nota_categoria VALUES(1,1,1);


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Album Duki','Escuchar el album de Duki - Temporada de Reggaeton','2021/11/01','2021/11/00',0,1);

INSERT INTO DB_Notas.id_nota_categoria VALUES(2,2,2);


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Medicamento','Tomar los medicamentos de la presión','2021/1/1','2021/8/11',1,2);

INSERT INTO DB_Notas.id_nota_categoria VALUES(3,3,10);


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Asado Sabado','Comprar la comida para el asado del sabado','2021/15/11','2021/15/11',0,10);

INSERT INTO DB_Notas.id_nota_categoria VALUES(4,4,7);


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Mazmorra Mitica','Equiparse para la mitica +10','2021/07/07','2021/11/1',0,9);

INSERT INTO DB_Notas.id_nota_categoria VALUES(5,5,6)


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Depositar Cheques','Depositar los cheques de Perro SA','2021/11/5','2021/11/5',0,4);

INSERT INTO DB_Notas.id_nota_categoria VALUES(6,6,8);


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Estudiar Final Quimica','Estudiar los ultimos dos modulos para rendir QUIMICA','2021/04/11','2021/10/10',0,6);

INSERT INTO DB_Notas.id_nota_categoria VALUES(7,7,3);


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Regalo Carlitos','Comprarle el regalo de cumpleaños a Carlitos','2021/7/19','2021/7/19',0,5);

INSERT INTO DB_Notas.id_nota_categoria VALUES(8,8,10);


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Rutina Viernes','Biceps y Hombros','2021/10/10','2021/10/10',0,8);

INSERT INTO DB_Notas.id_nota_categoria VALUES(9,9,9);


INSERT INTO DB_Notas.Notas(titulo, descripcion, fecha_creacion, fecha_ult_modif, perma, id_usuario)
VALUES ('Comprar Gaseosa','Comprar cocacola y sprite light','2021/10/11','2021/10/11',0,6);

INSERT INTO DB_Notas.id_nota_categoria VALUES(10,10,6)




