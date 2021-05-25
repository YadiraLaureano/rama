create database empleados;
use empleados;
create table generos(
ID int(11) not null primary key,
nombre varchar(255)
);
create table trabajo(
ID int(11) primary key,
nombre varchar(255),
salary double
);
create table empleados(
ID int(11) primary key,
gender_id int(11),
job_id int(11),
nombre varchar(255),
last_name varchar(255),
cumpleanios date,
foreign key(gender_id) references generos(ID),
foreign key(job_id) references trabajo(ID)
);
create table empleados_horas_trabajo(
ID int(11) primary key,
empleados_id int(11),
horas_trabajo int(11),
fecha_trabajo date,
foreign key(empleados_id) references empleados(ID)
);

insert into generos values(1,'mujer');
insert into generos values(2,'hombre');
insert into trabajo values(1,'albaÃ±il',100);
insert into trabajo values(2,'programador',1000);
insert into empleados values(1,1,1,'david','deivid','12-12-12');
insert into empleados values(2,2,2,'xx','deivid','11-12-12');
insert into empleados_horas_trabajo values(1,2,1,'15-11-15');

