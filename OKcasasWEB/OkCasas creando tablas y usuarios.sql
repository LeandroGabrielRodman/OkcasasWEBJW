Create user ADMIN identified by Admin1 account unlock;
GRANT all priveleges to ADMIN;


commit;

ALTER TABLE USUARIO ADD(TIPO_USUARIO CHAR NOT NULL
);

alter table
   USUARIO
modify
(
   CORREO_ELECTRONICO varchar2(50)
);


alter table
   USUARIO
modify
(
   DIRECCION varchar2(100)
);

create table LISTA_CLIENTES_BANCO
(HIPOTECARIO CHAR not null
);

ALTER TABLE LISTA_CLIENTES_BANCO ADD(RUT NUMBER NOT NULL,
CODIGO_BANCO NUMBER NOT NULL,
FOREIGN KEY(RUT) REFERENCES CLIENTE(RUT),
FOREIGN KEY(CODIGO_BANCO) REFERENCES BANCO(CODIGO_BANCO)
);

ALTER TABLE EQUIPO_TECNICO ADD(TRABAJANDO_ACTUALMENTE CHAR NOT NULL
);

CREATE TABLE USUARIOS_OKCASAS(USUARIO VARCHAR(20) NOT NULL,
CONTRASENA VARCHAR(20) NOT NULL,
TIPO_USUARIO CHAR NOT NULL
);

DROP TABLE TIPO_USUARIO;

CREATE TABLE TIPO_USUARIO(CODIGO CHAR PRIMARY KEY,
DESCRIPCION VARCHAR(20) NOT NULL
);

--SELECT * FROM LISTA_CLIENTES_BANCO;
--SELECT * FROM EQUIPO_TECNICO;
--select * from USUARIOS_OKCASAS;
--select * from TIPO_USUARIO;
--SELECT * FROM USUARIO;

INSERT INTO TIPO_USUARIO VALUES('C',
                                'Cliente');
INSERT INTO TIPO_USUARIO VALUES('T',
                                'Tecnico');
INSERT INTO TIPO_USUARIO VALUES('A',
                                'Administrador');                                
                            
INSERT INTO USUARIO VALUES(21441520,
                            'Jean', 
                            'Llanos', 
                            'jean@gmail.com',
                            81444476,
                            '06/08/1996',
                            'santa maria 342, comuna La granja',
                            5467557,
                            'M',
                            'Santiago',
                            'C');

INSERT INTO USUARIO VALUES(1144152,
                            'felipe', 
                            'perez', 
                            'felipe.perez@alumnos.duoc.cl',
                            25678876,
                            '11/09/1956',
                            'los naranjos 987, comuna Puente alto',
                            5467557,
                            'M',
                            'Santiago',
                            'C');

INSERT INTO USUARIO VALUES(9254678,
                            'Maria', 
                            'Flores', 
                            'Maria@hotmail.com',
                            12345676,
                            '12/12/2001',
                            'Senda los cielos, comuna La Florida',
                            6582991,
                            'F',
                            'Santiago',
                            'C');

INSERT INTO USUARIO VALUES(5879398,
                            'Ana', 
                            'Ramirez', 
                            'Ana@hotmail.com',
                            98765427,
                            '05/04/1970',
                            'Piedra Sana 98, comuna Putre',
                            6582991,
                            'F',
                            'Arica',
                            'T');
                            
INSERT INTO USUARIO VALUES(20786345,
                            'Antonia', 
                            'Salazar', 
                            'anto@gmail.com',
                            87902364,
                            '05/04/1998',
                            'Andre Cascada 678, comuna Ovalle',
                            7865448,
                            'F',
                            'Coquimbo',
                            'T'); 
                            
INSERT INTO USUARIO VALUES(19876543,
                            'Pablo', 
                            'Larrain', 
                            'pablo@gmail.com',
                            12674532,
                            '05/04/1998',
                            'Andre Cascada primo 679, comuna Ovalle',
                            9810083,
                            'M',
                            'Coquimbo',
                            'T');  
                            
INSERT INTO USUARIO VALUES(20546143,
                            'Alan', 
                            'Brito', 
                            'Alan@gmail.com',
                            54635542,
                            '08/02/1995',
                            'Olimpo 10, comuna Los Andes',
                            1736885,
                            'M',
                            'Valparaiso',
                            'A');   

INSERT INTO USUARIOS_OKCASAS VALUES('jeanpipa',
                                    'jean', 
                                    'C');
                                    
INSERT INTO USUARIOS_OKCASAS VALUES('felipote',
                                    'felipe', 
                                    'C');
                                    
INSERT INTO USUARIOS_OKCASAS VALUES('maria',
                                    'maria', 
                                    'C');  

INSERT INTO USUARIOS_OKCASAS VALUES('anita',
                                    'ana', 
                                    'T');  
                                    
INSERT INTO USUARIOS_OKCASAS VALUES('anto',
                                    'antonia', 
                                    'T'); 
                                    
INSERT INTO USUARIOS_OKCASAS VALUES('pablote',
                                    'pablo', 
                                    'T');    
                                    
INSERT INTO USUARIOS_OKCASAS VALUES('alan',
                                    'alan', 
                                    'A');                                    
                                    