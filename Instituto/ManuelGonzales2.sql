USE manuelgonzalesprada;
INSERT INTO PROFESOR
(nombre,apellidos,direccion,telefono)
VALUES
('Teofilo Francisco','Cardenas Luran','teofilo.cardenas@manuelgonzalesprada.edu.pe','972804309'),
('Sarita','Carrasco Caceres','sarita.carrasco@manuelgonzalesprada.edu.pe','965721345'),
('Cesar Edoy','Jesus Hipolito','ce@manuelgonzalesprada.edu.pe','987613246'),
('Mario Ernesto','Solar Enciso','mario,ernesto@manuelgonzalesprada.edu.pe','923568741'),
('Francisco Stuardo','Hurtado Quispe','francisco.hurtado@manuelgonzalesprada.edu.pe','997845263'),
('Eusebio','Vicente Ramos','eusebio.vicente@manuelgonzalesprada.edu.pe','995236741'),
('Violeta Ernestina','Martinez Payano','violeta.martinez@manuelgonzalesprada.edu.pe','966232141'),
('Juan Franciso','Huaman Lucas','juan.huaman@manuelgonzalesprada.edu.pe','92564137'),
('Sonia Esther','Payano Quispe','sonia.payano@manuelgonzalesprada.edu.pe','988223145'),
('Angel Uribe','Quispe Castillon','angel.quispe@manuelgonzalesprada.edu.pe','94148525'),
('Nancy','Torres Yataca','nancy.torres@manuelgonzalesprada.edu.pe','974422136'),
('Mirella Marily','Falla Olaya','mirella.falla@manuelgonzalesprada.edu.pe','912662587'),
('Jessica Jeanette','Cuzcano de la cruz','jessica.cuzcano@manuelgonzalesprada.edu.pe','985814723'),
('Whitman Darwin','Soriano Saavedra','whitman.soriano@manuelgonzalesprada.edu.pe','998456103'),
('Maria Ysabel','Flores Palomino','maria.flores@manuelgonzalesprada.edu.pe','923568741'),
('Luis Alberto','Rojas Baca','luis.rojas@manuelgonzalesprada.edu.pe','988223145'),
('Irene Gavina','Ortiz Cavero','irene.ortiz@manuelgonzalesprada.edu.pe','912662587'),
('Edilberto Pablo','Andrade Sanchez','edilberto.andrade@manuelgonzalesprada.edu.pe','985814723'),
('Maria del Rosario','Calagua Legua','maria.calagua@manuelgonzalesprada.edu.pe','995236741'),
('Jeny Rosaura','Champion Suares','jeny.champion@manuelgonzalesprada.edu.pe','966232141'),
('Basilio Manuel','Peña Levano','basilio.peña@manuelgonzalesprada.edu.pe','94148525'),
('Layda Magdalena','Alata Rey','layda.alata@manuelgonzalesprada.edu.pe','912662587');
SELECT * FROM PROFESOR;
INSERT INTO ALUMNO
(nombre,apellidos,Fechadenacimiento,asig_id,telefono)
VALUES
('Luis','Rejas Pariona', STR_TO_DATE('10/02/1970','%d/%m/%Y'),'4','998456103'),
('Maricielo','Cruz Campos', STR_TO_DATE('20/03/1980','%d/%m/%Y'),'5','985814723'),
('Fiorella','Avila Cortez', STR_TO_DATE('05/06/1986','%d/%m/%Y'),'2','923568741'),
('Evelyn','Marcas Flores',STR_TO_DATE('10/02/1970','%d/%m/%Y'),'3','985814723'),
('Claudia','Perales Ortiz', STR_TO_DATE('25/07/1981','%d/%m/%Y'),'2','997845263'),
('Mario','Barrios Martinez', STR_TO_DATE('10/10/1987','%d/%m/%Y'),'1','986525871'),
('Brunela','Tarazona Guerra', STR_TO_DATE('05/06/1990','%d/%m/%Y'),'4','995236741'),
('Alejandro','Jimenez Huapaya', STR_TO_DATE('01/06/1989','%d/%m/%Y'),'4','941525365'),
('Claudia','Marquez Litano', STR_TO_DATE('01/10/1991','%d/%m/%Y'),'5','985814723'),
('Mario','Rodriguez Mayo', STR_TO_DATE('10/11/1987','%d/%m/%Y'),'7','912662587'),
('Luis','Guerra Moltavan', STR_TO_DATE('21/12/1988','%d/%m/%Y'),'7','974422136'),
('Alberto Al..','Candela Alvino', STR_TO_DATE('30/06/1995','%d/%m/%Y'),'3','94148525'),
('Angel M..','Rejas Avila',STR_TO_DATE('02/03/1975','%d/%m/%Y'),'2','941525365'),
('Hilario F..','Avila Huapaya', STR_TO_DATE('02/05/2000','%d/%m/%Y'),'6','985515326'),
('Octavio..','Marquez Osorio', STR_TO_DATE('22/09/2000','%d/%m/%Y'),'6','966232141'),
('Manolo E..','Vasquez Saravia', STR_TO_DATE('22/09/2000','%d/%m/%Y'),'5','966232141'),
('Genovev..','Ortiz Quispe', STR_TO_DATE('12/04/2003','%d/%m/%Y'),'5','92564137'),
('Oscar C..','Quiroz Zavala', STR_TO_DATE('12/10/2004','%d/%m/%Y'),'3','988223145'),
('Veronica','Romero Vargas',STR_TO_DATE('25/08/2002','%d/%m/%Y'),'8','94148525'),
('Eliseo','Prada Ortiz', STR_TO_DATE('15/09/2004','%d/%m/%Y'),'6','941525365');
INSERT INTO PERSONAL
(nombre,apellidos,telefono,categoria_id)
VALUES
('Kethy','Saldaña Gutierrez','92564137','4'),
('Carlos','Reynoso Sanchez','985515326','2'),
('Joel','Payano Melgarejo','92564137','3'),
('Jorge','Cuya Llanos','974422136','2'),
('Vidal','Carmen Del Aguila','941525365','1'),
('Violeta.','Antoño Aguirre','997845263','1');
INSERT INTO ASIGNATURA
(materia,clase_id,profesor_id)
VALUES
('Matematicas','2','5'),
('Comunicacion','4','15'),
('Religion','6','18'),
('Ciencias Humana','1','12'),
('Fisica','3','8'),
('Quimica','1','3'),
('Personal social','8','14');
INSERT INTO CLASE
(turno,curso_id)
VALUES
('Mañana','2'),
('Tarde','3'),
('Tarde','7'),
('Mañana','6'),
('Tarde','4'),
('Mañana','1'),
('Tarde','5');
INSERT INTO REGISTRO
(alumno_id,materia,asignatura_id,fecha,nota_promedio)
VALUES
('12','2','5',STR_TO_DATE('10/02/1970','%d/%m/%Y'),'Aprobado:15'),
('20','7','8',STR_TO_DATE('12/10/2004','%d/%m/%Y'),'Aprobado:19'),
('5','4','3',STR_TO_DATE('10/02/1970','%d/%m/%Y'),'Aprobado:17'),
('22','6','6',STR_TO_DATE('15/09/2004','%d/%m/%Y'),'Desaprobado:10'),
('2','1','2',STR_TO_DATE('12/10/2004','%d/%m/%Y'),'Desaprobado:8'),
('18','3','4',STR_TO_DATE('20/03/1980','%d/%m/%Y'),'Desaprobado:11'),
('17','4','1',STR_TO_DATE('01/10/1991','%d/%m/%Y'),'Desaprobado:5');

SELECT * FROM ASIGNATURA
;
