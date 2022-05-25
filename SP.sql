--CREATE LANGUAGE plpgsql;
SELECT * FROM veterinario;

CREATE OR REPLACE PROCEDURE eliminaVeterinario(curpv VARCHAR)
	AS $$
	BEGIN
		DELETE FROM veterinario WHERE curp = curpv;
	END;
	$$
	Language plpgsql;

CALL eliminaVeterinario('SAUC990507MMCNRY07');


SELECT * FROM veterinario;