--Modificación de Supervisor
CREATE OR REPLACE FUNCTION swap_surnames() RETURNS TRIGGER
AS
$$
DECLARE
    apeM varchar(50);
    apeP varchar(50);
    BEGIN
    IF(TG_OP = 'INSERT') THEN
    SELECT apellidoM INTO apeM FROM supervisor
    WHERE curp = NEW.curp;
    SELECT apellidoP INTO apeP FROM supervisor
    WHERE curp = NEW.curp;
    UPDATE supervisor SET apellidoM = apeP , apellidoP = apeM WHERE curp = NEW.curp;
    END IF;
    RETURN null;
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

--Funcion que manda una excepcion si se intenta eliminar o actualizar algun elemento de la tabla mascota 
CREATE OR REPLACE FUNCTION prevent_del_upt() RETURNS TRIGGER
AS
$$
BEGIN
 IF TG_OP = 'DELETE' THEN
 RAISE EXCEPTION 'La tabla mascota no permite eliminaciones';
 END IF;
 IF TG_OP = 'UPDATE' THEN
 RAISE EXCEPTION 'La tabla mascota no permite actualizaciones';
 END IF;
 RETURN null;
 END
 $$
LANGUAGE plpgsql;
--Trigger que manda a llamar la funcion de procedimiento prevent_del_upt()
CREATE OR REPLACE TRIGGER denegation_del_upt_mascota
BEFORE DELETE OR UPDATE 
ON mascota
FOR EACH ROW
EXECUTE PROCEDURE prevent_del_upt();
--Pruebas para verificar el resultado del trigger denegation_del_upt_mascota
DELETE FROM mascota 
WHERE nomMascota = 'Peirce';

DELETE FROM mascota;
SELECT * FROM mascota;

UPDATE mascota
SET especie = 'serpiente',
raza = 'Golden retriever',
edad = 12
WHERE nomMascota = 'Peirce'