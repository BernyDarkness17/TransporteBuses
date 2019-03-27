create database buses;
use buses;--drop database buses;

create table bus(
    id int primary key auto_increment,
    nombre varchar(50)
);
insert into bus values(null, 'Bus 1');
insert into bus values(null, 'Bus 2');
insert into bus values(null, 'Bus 3');

create table comuna(
    id int primary key auto_increment,
    nombre varchar(100)
);
insert into comuna values(null, 'Graneros');
insert into comuna values(null, 'San Francisco');
insert into comuna values(null, 'Codegua');
insert into comuna values(null, 'Rancagua');
insert into comuna values(null, 'Machali');
insert into comuna values(null, 'La Compañia');
insert into comuna values(null, 'Olivar Alto');
insert into comuna values(null, 'Lo Miranda');
insert into comuna values(null, 'Doñihue');


create table trabajador(
    id int primary key auto_increment,
    rut varchar(13),
    nombre varchar(100),
    apellido varchar(100),
    fk_comuna int,
    direccion varchar(200),
    fk_bus int,
    foreign key(fk_comuna) references comuna(id),
    foreign key(fk_bus) references bus(id)
);

insert into trabajador values(null, '11-1', 'Pablo', 'Perez', 5,'Matzalino', 2);
insert into trabajador values(null, '22-2', 'Berny', 'Antilaf', 3,'Matzalino', 1);

--Cargar comboBox comunas bus 1:
select * from comuna where id>=1 and id<=3;

--Cargar comboBox comunas bus 2:
select * from comuna where id>=4 and id<=6;

--Cargar comboBox comunas bus 3:
select * from comuna where id>=7 and id<=9;
-----------------------------------------------------------

--Cargar tablas BUS 1
select trabajador.id, trabajador.rut, trabajador.nombre, trabajador.apellido, comuna.nombre, trabajador.direccion
from trabajador, bus, comuna
where comuna.id = trabajador.fk_comuna and bus.id = trabajador.fk_bus and
trabajador.fk_comuna>=1 and trabajador.fk_comuna<=3;

--Cargar tablas BUS 2
select trabajador.id, trabajador.rut, trabajador.nombre, trabajador.apellido, comuna.nombre, trabajador.direccion
from trabajador, bus, comuna
where comuna.id = trabajador.fk_comuna and bus.id = trabajador.fk_bus and
trabajador.fk_comuna>=4 and trabajador.fk_comuna<=6;

--Cargar tablas BUS 3
select trabajador.id, trabajador.rut, trabajador.nombre, trabajador.apellido, comuna.nombre, trabajador.direccion
from trabajador, bus, comuna
where comuna.id = trabajador.fk_comuna and bus.id = trabajador.fk_bus and
trabajador.fk_comuna>=7 and trabajador.fk_comuna<=9;

