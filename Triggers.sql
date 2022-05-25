--Modificación de Supervisor
CREATE OR REPLACE FUNCTION swap_surnames() RETURNS TRIGGER
AS
$$
DECLARE
    apeM varchar(20);
    apeP varchar(20);
    BEGIN
    if(TG_OP = 'INSERT') then
    select apellidoM into apeM from supervisor
    where curp = new.curp;
    select apellidoP into apeP from supervisor
    where curp = new.curp;
    update supervisor set apellidoM = apeP , apellidoP = apeM where curp = new.curp;
    end if;
    return null;
    END
    $$
LANGUAGE plpgsql;
--Creación del disparador
CREATE TRIGGER cambio_apellidos
AFTER INSERT ON supervisor
FOR EACH ROW
EXECUTE PROCEDURE swap_surnames();
--Pruebas
INSERT INTO supervisor(curp,idEstetica,apellidoM,apellidoP,nombre,estado,calle,numero,cp,telefono,genero,nacimiento,salario,rfc,inicio,fin,fechaInicio,fechaTermino) VALUES ('CACC636991RJPSEP27',3,'Pasek','Bettesworth','Gustav','Campeche','Mcguire',6,62707,4507792203,'M','1981-08-13',154470,'UZBN404892A7B','4:19 PM','10:05 PM','2015-05-04','2006-01-11');
SELECT apellidoM, apellidoP FROM supervisor where curp='CACC636991RJPSEP27';