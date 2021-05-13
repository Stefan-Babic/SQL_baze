drop database if exists zupanije_opcine_mjesta;
create database zupanije_opcine_mjesta;
use zupanije_opcine_mjesta;

create table zupanija(
id int not null primary key auto_increment,
name varchar(255) not null,
zupan int 
);
create table opcina(
id int not null primary key auto_increment,
name varchar(255),
zupanija int
);
create table mjesto(
id int not null primary key auto_increment,
opcina int,
name varchar(255)
);
create table zupan(
id int not null primary key auto_increment,
first_name varchar(50),
last_name varchar(50)
);
alter table opcina add foreign key(zupanija) references zupanija(id);
alter table zupanija add foreign key(zupan) references zupan(id);
alter table mjesto add foreign key(opcina) references opcina(id);
