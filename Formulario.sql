DROP DATABASE IF EXISTS manuelgonzalesprada; 
CREATE DATABASE manuelgonzalesprada
DEFAULT CHARACTER SET utf8;

USE manuelgonzalesprada;

CREATE TABLE SOLICITANTE
(
	id int auto_increment,
	nombre varchar(60) not null,
	apellidos varchar(60) not null,
	email varchar(80) not null,
	telefono char(9) ,
	activo bool default("1"),
	CONSTRAINT solicitante_pk PRIMARY KEY (id)
);

CREATE TABLE FORMULARIO
(
id int auto_increment,
asunto text(150) not null,
fecha_envio timestamp ,
CONSTRAINT formulario_pk PRIMARY KEY (id)
);

CREATE TABLE FECHAS_CIVICAS
(
id int auto_increment,
nombre text(150) not null,
fechaCelebracion datetime ,
descripcion text(100) not null,
objetivos text(150) not null,
actividades text(150) not null,
CONSTRAINT fechas_civicas_pk PRIMARY KEY (id)
);

ALTER TABLE SOLICITANTE
	ADD CONSTRAINT fk_FORMULARIO_SOLICITANTE FOREIGN KEY (id)
    REFERENCES FORMULARIO (id)
    ON UPDATE CASCADE;
ALTER TABLE SOLICITANTE
	ADD CONSTRAINT fk_FECHAS_CIVICAS_SOLICITANTE FOREIGN KEY (id)
    REFERENCES FECHAS_CIVICAS (id)
    ON UPDATE CASCADE;
ALTER TABLE FORMULARIO
	ADD CONSTRAINT fk_FECHAS_CIVICAS_FORMULARIO FOREIGN KEY (id)
    REFERENCES FECHAS_CIVICAS (id)
    ON UPDATE CASCADE;
    
INSERT INTO SOLICITANTE
(nombre,apellidos,email,telefono)
Values
('Cristhian Manuel','Rojas Bellido','cristhianrojas@gmail.com','917129045'),
('Emerson','Santa Cruz','emerson.santa@yahoo.com','935478602'),
('John','Flores','john.flore@vallegrande.edu.pe','932716084'),
('Paolo','Guerrero','paolo.guerrero@seleccion.peru','934780515'),
('Kilian','Mbape','kilian.mbape@gmil.com','985423162'),
('Leonel','Messi','leonelmessi@gmail.com','974803236'),
('Kun','Aguero','kun.aguero@gmail.com','936527179'),
('Pedro','Silva','pedro.silva@gmil.com','955321647'),
('Vicent Jean','Mpoy Kompany','vicent.kompany@vallegrande.edu.pe','982231564'),
('Gnégnéri','Yaya Touré','yaya.toure@yahoo.es','934416262') ;

SELECT * FROM SOLICITANTE;
 
INSERT INTO FORMULARIO
(asunto)
VALUES
('Consultas sobre las notas de mi hijo'),
('Consulta de bacantes'),
('Matriculas'),
('Horarios'),
('Matriculas'),
('Consultas sobre las notas de mi hijo'),
('Horarios'),
('Horarios'),
('Consulta de bacantes'),
('Puesto de Trabajo');

SELECT * FROM FORMULARIO;

INSERT INTO FECHAS_CIVICAS
(nombre,fechaCelebracion,descripcion,objetivos,Actividades)
VALUES
('Primer periodo de clases',STR_TO_DATE('10/02/2023','%d/%m/%Y'),'Empieza los dias de clases para los alumnos','Aprender','Examenes'),
('Día del Padre',STR_TO_DATE('16/06/2023','%d/%m/%Y'),'Celebracion para los padres','','Realizar un pequeño evento'),
('Dia del Maestro',STR_TO_DATE('6/07/2023','%d/%m/%Y'),'celebracion para los maestros','','Feriado'),
('Día Internacional de la Mujer',STR_TO_DATE('8/03/2023','%d/%m/%Y'),'Celebracion del dia de la mujer','Cultura','Feriado');

SELECT * FROM FECHAS_CIVICAS;
/*5 ejemplos de UPDATE*/
UPDATE SOLICITANTE
	SET  activo = 0
    WHERE id = '5';
    
    
    
UPDATE SOLICITANTE
	SET  nombre = 'Oscar'
    WHERE id = '2';
    
    
UPDATE SOLICITANTE
	SET  telefono = ''
    WHERE id = '8';
    
    
UPDATE FECHAS_CIVICAS
	SET  fechaCelebracion = STR_TO_DATE('20/12/1952','%d/%m/%Y')
    WHERE id = '1';
    
    
UPDATE FORMULARIO
	SET  asunto = ''
    WHERE id = '2';
/*5 listar*/
SELECT * FROM SOLICITANTE;
SELECT * FROM FORMULARIO;
SELECT * FROM FECHAS_CIVICAS;
SHOW COLUMNS FROM SOLICITANTE;
SHOW COLUMNS FROM FORMULARIO;
/*5 de eliminar*/
DELETE FROM SOLICITANTE WHERE id = '8';
DELETE FROM SOLICITANTE WHERE id = '2';
DELETE FROM SOLICITANTE WHERE id = '7';
DELETE FROM FORMULARIO WHERE id = '2';
DELETE FROM FECHAS_CIVICAS WHERE id = '3';