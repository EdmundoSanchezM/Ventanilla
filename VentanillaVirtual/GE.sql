drop database if  exists GestionEscolarV7;
create database GestionEscolarV7;
use  GestionEscolarV7;

/*
Incidencias va a hacer el numero de veces que el usuario uso el programa inadecuadamente
esto quiere decir que dependiendo su numero de incidencias la peticion va a ser tomada en cuenta mas rapido o no
tambien llegando a las 10 incidencias el Administrador, en este caso la secretaria o el secretario va a poder dar de baja
temporalmente al usuarion.

Nota luego jalate para aca y has una tabla relalcionando grupos y secretarios y tambien lo que viene siendo la carrera
Te encargo we :v
*/
create table Alumnos(
IdA int(16) not null primary key auto_increment,
Nombre varchar(250) not null,
ApellidoP varchar(250)not null,
ApellidoM varchar(250)not null,
Email varchar(250) not null,
Contraseña varchar(250)not null,
NBoleta int(10) not null,
Grupo varchar(10) not null,
Incidencias int (10) null default 0
)ENGINE=INNODB;

create table Secre(
IdS int(16) not null primary key auto_increment,
NombreS varchar(256)not null
)ENGINE=INNODB;

create table CatalogoTramite(
IdTramite int(16) not null primary key auto_increment,
NTramite varchar(256)not null
)ENGINE=INNODB;

create table Tramite(
Folio int(25)auto_increment not null primary key,
IdA int(16) not null,
IdT int(16) not null,
IdS int(16) not null,
Uso varchar(260) not null,
Fesha DATETIME not null,
Observaciones varchar(260)not null,
Conformidad varchar(260) not null,
FechaC datetime not null
)ENGINE=INNODB;
  
alter table Tramite add foreign key(IdA) references Alumnos(IdA) on delete cascade on update cascade;
alter table Tramite add foreign key(IdT) references CatalogoTramite(IdTramite) on delete cascade on update cascade;
alter table Tramite add foreign key(IdS) references Secre(IdS) on delete cascade on update cascade;

select * from Alumnos;

/*
Debe de tener un folio y una relacion con el alumno que lo pide 
tambien debe de tener una fecha tanto de inicio como de termino del proceso
tambien el nombre de la secretaria quien atendio la solicitud
tambien haz una tabla con el tipo de solicitud(catalogo)

*/