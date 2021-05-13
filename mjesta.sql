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

insert into zupan(first_name,last_name) values
('Bozo','Galic'),
('Ivan','Anusic'),
('Zlatko','Komadina');
insert into zupanija(name,zupan) values
('Vukovarsko-srijemska',1),
('Osjecko-baranjska',2),
('Primorsko-goranska',3);
insert into opcina(name,zupanija) values
('Tompojevci',1),('Nijemci',1),
('Gorjani',2),('Fericanci',2),
('Dobrinj',3),('Fuzine',3);
insert into mjesto(name,opcina) values
('Berak',1),('cakovci',1),('deletovci',2),('Apsevci',2),
('Gorjani',3),('Tomasanci',3),('Gazije',4),('Valenovac',4),
('Rudine',5),('Klanice',5),('Belo Selo',6),('Vrata',6);

