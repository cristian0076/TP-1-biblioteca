create database biblioteca

use biblioteca

create TABLE IDIOMA(
IDidioma int not null primary key identity(1,1),
descripcion varchar(20) not null,
)

create TABLE GENERO(
IDgenero int not null primary key identity(1,1),
descripcion varchar(20) not null,
)

create TABLE EDITORIAL(
IDeditorial int not null primary key identity(1,1),
descripcion varchar(35) not null,
)

create TABLE PAIS(
IDpais tinyint not null primary key identity(1,1),
descripcion varchar(60) not null,
)

create TABLE LIBROS(
IDlibro int not null primary key identity(1,1),
titulo varchar(80) not null,
paginas int null,
idioma int null FOREIGN KEY REFERENCES IDIOMA(IDidioma),
fecha date not null,
editorial int null FOREIGN KEY REFERENCES EDITORIAL(IDeditorial),
)

create TABLE AUTOR(
IDautor int not null primary key identity(1,1),
nombre varchar(35) not null,
fnac date not null,
sexo char null,
pais tinyint null FOREIGN KEY REFERENCES PAIS(IDpais),
)

create TABLE AUTORXLIBRO(
libro int FOREIGN KEY REFERENCES LIBROS(IDlibro),
autor int  FOREIGN KEY REFERENCES AUTOR(IDautor),
primary key(libro,autor),
)

create TABLE GENEROXLIBRO(
libro int FOREIGN KEY REFERENCES LIBROS(IDlibro),
genero int  FOREIGN KEY REFERENCES GENERO(IDgenero),
primary key(libro,genero),
)

