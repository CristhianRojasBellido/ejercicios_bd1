DROP DATABASE IF EXISTS manuelgonzalesprada; 
CREATE DATABASE manuelgonzalesprada
DEFAULT CHARACTER SET utf8;

USE manuelgonzalesprada;

CREATE TABLE PROFESOR
(
	id int auto_increment,
	nombre varchar(60) not null,
	apellidos varchar(60) not null,
	direccion varchar(80) not null,
	telefono char(9) ,
	activo bool default("1"),
	CONSTRAINT profesor_pk PRIMARY KEY (id)
);
SHOW COLUMNS IN Profesor;


CREATE TABLE ALUMNO
(
	id	int auto_increment,
	nombre varchar(60) not null,
	apellidos varchar(90) not null,
	Fechadenacimiento date not null,
    asig_id int not null,
	telefono char(9) ,
	activo bool default("1"),
	CONSTRAINT alumno_pk PRIMARY KEY (id)
);
SHOW COLUMNS IN ALUMNO;


CREATE TABLE PERSONAL
(
	id	int auto_increment,
	nombre varchar(60) not null,
	apellidos varchar(80) not null,	
	telefono char(9) ,
	categoria_id int not null,
	activo  bool default("1") ,
	CONSTRAINT personal_pk PRIMARY KEY (id)
);
SHOW COLUMNS IN Personal;


CREATE TABLE ASIGNATURA
(
	id int auto_increment,
	materia varchar(30) not null,
	clase_id int not null,
	profesor_id int not null,
	CONSTRAINT asignatura_pk PRIMARY KEY (id)
);
SHOW COLUMNS IN ASIGNATURA;



CREATE TABLE CLASE
(
id int auto_increment,
turno varchar(60) not null,
curso_id int not null,
CONSTRAINT clase_pk PRIMARY KEY (id)
);
SHOW COLUMNS IN Clase;


CREATE TABLE REGISTRO
(
	id int auto_increment,
	alumno_id int not null,
	materia varchar(10) not null,
	asignatura_id int not null,
	fecha date not null,
	nota_promedio varchar(40) not null,
	CONSTRAINT registro_pk PRIMARY KEY (id)
);
SHOW COLUMNS IN Registro;
SHOW TABLES;



ALTER TABLE ASIGNATURA
	ADD CONSTRAINT ASIGNATURA_CLASE FOREIGN KEY (clase_id)
    REFERENCES CLASE (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE PERSONAL 
	ADD CONSTRAINT PERSONAL_PROFESOR FOREIGN KEY (categoria_id)
    REFERENCES PROFESOR (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE CLASE 
	ADD CONSTRAINT CLASE_REGISTRO FOREIGN KEY (curso_id)
    REFERENCES REGISTRO (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE REGISTRO
	ADD CONSTRAINT REGISTRO_ALUMNO FOREIGN KEY (alumno_id)
    REFERENCES ALUMNO (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE ALUMNO
	ADD CONSTRAINT ALUMNO_ASIGNATURA FOREIGN KEY (asig_id)
    REFERENCES ASIGNATURA (id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
;

ALTER TABLE ASIGNATURA
	ADD CONSTRAINT ASIGNATURA_PROFESOR FOREIGN KEY (profesor_id)
		REFERENCES PROFESOR (id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
;
