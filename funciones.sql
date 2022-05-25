----------------------Funcion que recibe la CURP y nos regresa la edad del cliente----------------------------
-- Funcion1: se basa en la fecha de cumpleaños
create or replace function edadActual_D(curpCl varchar) returns
    table(curp char(18), apellidop varchar(50), apellidom varchar(50), nombre varchar(50),
          edad interval)
as
$$
   select curp, apellidop, apellidom, nombre,
   AGE(NOW(), cumpleanios) AS edad
   from cliente
   group by curp
   having curp like curpCl;
$$
language sql; 

---Jala para cualquier CURP en la BD
select * from edadActual_D('ADCD130427OJVVBU82');

drop function edadActual_D;

-- Funcion2: Se basa en la CURP
create or replace function edadActual(curpCl varchar) returns
    table(curp char(18), apellidop varchar(50), apellidom varchar(50), nombre varchar(50),
          edad interval)
as
$$
   select curp, apellidop, apellidom, nombre,
   AGE(NOW(),TO_DATE(SUBSTRING(curp,5,6),'YYMMDD')) AS edad
   from cliente
   group by curp
   having curp like curpCl;
$$
language sql; 

---Solo jala para la curp JQKI741011EQJBTC76 pues el resto de los curp no tienen formato YYMMDD necesario
select * from edadActual('JQKI741011EQJBTC76');

drop function edadActual;

-----------------Funcion que recibe la idEstetica y regresa las ganancias de esa estetica-------------------------
-- Funcion3: Se basa en la idEstetica
create or replace function ganancias(idest int) returns
    table(idestetica int, nombre varchar(50) , estado varchar(50), ganancias int)
as
$$
   select e.idestetica, e.nombre, e.estado, sum( ceg.precioemergencia+ cec.precioemergencia +
                            cel.precioemergencia+ cn.precionormal) as ganancias
   from estetica e 
   left join consemergenciaconsiderable cec
   ON e.idestetica= cec.idestetica
   left join consemergenciagrave ceg
   ON e.idestetica= ceg.idestetica
   left join consemergencialeve cel
   ON e.idestetica= cel.idestetica
   left join consnormal cn
   ON e.idestetica= cn.idestetica
   GROUP BY e.idestetica, e.nombre, e.estado
   having e.idestetica=idest;
$$
language sql; 

---
select * from ganancias(9);

drop function ganancias;


