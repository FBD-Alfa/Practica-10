--CREATE LANGUAGE plpgsql;
SELECT * FROM veterinario;

CREATE OR REPLACE PROCEDURE registrarVeterinario(curp IN CHAR(18),idEstetica IN INT, 
									apellidoM IN VARCHAR(50), apellidoP IN VARCHAR(50),
									nombre IN VARCHAR(50), estado IN VARCHAR(50),
									calle IN VARCHAR(50), numero IN INT, cp IN INT,
									telefono IN CHAR(10), genero IN CHAR(1), 
									nacimiento IN DATE, salario IN INT, 
									rfc in VARCHAR(30), inicio IN VARCHAR(30),
									fin IN VARCHAR(30), noPacientes IN INT,
									fechaInicio IN DATE, fechaTermino IN INT)
	AS $$
	BEGIN
		IF (TRUE) THEN
			INSERT INTO veterinario(curp,idEstetica,apellidoM,apellidoP,nombre,estado,calle,numero,cp,telefono,genero,nacimiento,salario,rfc,inicio,fin,noPacientes,fechaInicio,fechaTermino)
		 	VALUES (curp,idEstetica,apellidoM,apellidoP,nombre,estado,calle,numero,cp,telefono,genero,nacimiento,salario,rfc,inicio,fin,noPacientes,fechaInicio,fechaTermino);
		END IF;
	END;
	$$
	Language plpgsql;

CALL registrarVeterinario('ZHXY752436AAIJJQ83',26,'Barnhart','Chadd','Faye','Zacatecas','Rockefeller',23,16060,3045636873,'F','1985-07-09',12264,'MEPR796726K32','9:58 AM','12:16 AM',2,'2009-08-22','2017-03-28');


SELECT * FROM veterinario WHERE curp = 'ZHXY752436AAIJJQ83';

CREATE OR REPLACE PROCEDURE eliminaVeterinario(curpv VARCHAR)
	AS $$
	BEGIN
		DELETE FROM veterinario WHERE curp = curpv;
	END;
	$$
	Language plpgsql;

CALL eliminaVeterinario('SAUC990507MMCNRY07');


--SELECT * FROM veterinario;