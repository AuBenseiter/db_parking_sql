CREATE TABLE Cliente ( 
    rut_cliente         NUMBER(11) NOT NULL,
    dv                  CHAR(1) NOT NULL,
    primer_nombre       VARCHAR2(250) NOT NULL,
    segundo_nombre      VARCHAR2(250),
    apellido_paterno    VARCHAR2(250) NOT NULL,
    apellido_materno    VARCHAR2(250),
    direccion           VARCHAR2(250) NOT NULL,
    fono                NUMBER(9) NOT NULL, 
    correo              VARCHAR2(250) NOT NULL,
    comuna_id           NUMBER
);

ALTER TABLE Cliente ADD CONSTRAINT cliente_pk PRIMARY KEY (rut_cliente);

CREATE TABLE Acompanante ( 
    rut_acompanante     NUMBER(11) NOT NULL,
    dv                  CHAR(1) NOT NULL,
    primer_nombre       VARCHAR2(250) NOT NULL,
    segundo_nombre      VARCHAR2(250),
    apellido_paterno    VARCHAR2(250) NOT NULL,
    apellido_materno    VARCHAR2(250),
    direccion           VARCHAR2(250) NOT NULL,
    fono                NUMBER(9) NOT NULL, 
    correo              VARCHAR2(250) NOT NULL,
    comuna_id           NUMBER
);

ALTER TABLE Acompanante ADD CONSTRAINT acompanante_pk PRIMARY KEY (rut_acompanante);

CREATE TABLE Comuna (
    id_comuna NUMBER NOT NULL,
    nombre_comuna VARCHAR2(250) NOT NULL
);

ALTER TABLE Comuna ADD CONSTRAINT comuna_pk PRIMARY KEY (id_comuna);

ALTER TABLE Cliente ADD CONSTRAINT comuna_fk FOREIGN KEY (comuna_id)
    REFERENCES Comuna (id_comuna)
