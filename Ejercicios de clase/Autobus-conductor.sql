drop table Autobus cascade constraints;
drop table Conductor cascade constraints;

CREATE TABLE Autobus(
    matricula VARCHAR2(10) CONSTRAINT PK_MATRICULA_autobus PRIMARY KEY,
    licencia VARCHAR2(10) CONSTRAINT NN_LICENCIA AUTOBUS NOT NULL,
    categoria VARCHAR2(10) CONSTRAINT NN_CATEGORIA AUTOBUS NOT NULL
);
CREATE TABLE Conductor(
    carnet VARCHAR2(10) CONSTRAINT PK_CARNET_CONDUCTOR PRIMARY KEY,
    nombre VARCHAR2(20) CONSTRAINT NN_NOMBRE_CONDUCTOR NOT NULL,
    trayecto VARCHAR2(20) CONSTRAINT NN_TRAYECTO_CONDUCTOR NOT NULL
)
CREATE TABLE Condu_Auto(
    matricula VARCHAR2(10) CONSTRAINT NN_MATRICULA_CONDU_AUTO NOT NULL,
    carnet VARCHAR2(10) CONSTRAINT NN_CARNET_CONDU_AUTO NOT NULL
    trayecto VARCHAR2(20) CONSTRAINT NN_TRAYECTO_CONDU_AUTO NOT NULL
);
ALTER TABLE Condu_Auto 
    ADD CONSTRAINT FK_MATRICULA_CONDU_AUTO FOREIGN KEY(matricula) 
    REFERENCES Autobus(matricula);
ALTER TABLE Condu_Auto 
    ADD CONSTRAINT FK_CARNET_CONDU_AUTO FOREIGN KEY(carnet) 
    REFERENCES Conductor(carnet);

INSERT INTO Autobus VALUES('1234ABC','1234ABC','A');
INSERT INTO Autobus VALUES('1234ABD','1234ABD','B');
INSERT INTO Autobus VALUES('1234ABE','1234ABE','C');

INSERT INTO Conductor VALUES('1234ABC','Juan','Madrid');
INSERT INTO Conductor VALUES('1234ABD','Pedro','Madrid');
INSERT INTO Conductor VALUES('1234ABE','Hugo','Madrid');

SELECT * FROM Autobus;
SELECT * FROM Conductor;
