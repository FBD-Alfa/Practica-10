--CREATE LANGUAGE plpgsql;
SELECT * FROM veterinario;

CREATE OR REPLACE PROCEDURE registrarVeterinario(curp IN VARCHAR,idEstetica IN INT, 
									apellidoM IN VARCHAR, apellidoP IN VARCHAR,
									nombre IN VARCHAR, estado IN VARCHAR,
									calle IN VARCHAR, numero IN INT, cp IN INT,
									telefono IN CHAR, genero IN CHAR, 
									nacimiento IN DATE, salario IN INT, 
									rfc in VARCHAR, inicio IN VARCHAR,
									fin IN VARCHAR, noPacientes IN INT,
									fechaInicio IN DATE, fechaTermino IN DATE)
	AS $$
	BEGIN
		IF (TRUE) THEN
			INSERT INTO veterinario(curp,idEstetica,apellidoM,apellidoP,nombre,estado,calle,numero,cp,telefono,genero,nacimiento,salario,rfc,inicio,fin,noPacientes,fechaInicio,fechaTermino)
		 	VALUES (curp,idEstetica,apellidoM,apellidoP,nombre,estado,calle,numero,cp,telefono,genero,nacimiento,salario,rfc,inicio,fin,noPacientes,fechaInicio,fechaTermino);
		END IF;
	END;
	$$
	Language plpgsql;

CALL registrarVeterinario('ZHXY752436AAIJJQ83',26,'Barnhart','Chadd','Faye','Zacatecas','Rockefeller',23,16060,3045636873,'F','1985-07-09'::date,12264,'MEPR796726K32','9:58 AM','12:16 AM',2,'2009-08-22'::date,'2017-03-28'::date);


SELECT * FROM cuentas WHERE curp = 'ZHXY752436AAIJJQ83';

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