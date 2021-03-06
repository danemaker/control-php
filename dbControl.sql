create database if not exists controlApiRest;


use controlApiRest;



create table articulos(idarticulo int auto_increment not null, nombre varchar(255), descripcion text, precio double, primary key (idarticulo)); 


create table clientes(idcliente int auto_increment not null,dni varchar(255), nombre varchar(255), apellidos varchar(255), telefono int(255), primary key (idcliente));


create table documento(iddocumento int auto_increment not null, idcliente int, tipo varchar(255), fecha varchar(255), primary key (iddocumento), constraint foreign key (idcliente) references clientes(idcliente));


create table detalledocumento(iddetalle int auto_increment not null, iddocumento int, idarticulo int, cantidad int, precio double, primary key (iddetalle), constraint foreign key (iddocumento) references documento (iddocumento), constraint foreign key (idarticulo) references articulos (idarticulo));
