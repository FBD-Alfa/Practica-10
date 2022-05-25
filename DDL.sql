DROP SCHEMA IF EXISTS public CASCADE;

CREATE SCHEMA public;
CREATE TABLE consemergencialeve(
	idConsulta INT NOT NULL UNIQUE,
	curpCliente CHAR(18) NOT NULL,
	nomMascota VARCHAR(50) NOT NULL CHECK(nomMascota <> ''),
	curpVeterinario CHAR(18) NOT NULL,
	idEstetica INT NOT NULL,
	precioEmergencia INT NOT NULL,
	procedimiento CHAR(100) CHECK(procedimiento <> '')
);
COMMENT ON TABLE consemergencialeve IS 'Tabla que contiene informacion sobre las consultas de emergencia leve';
COMMENT ON COLUMN consemergencialeve.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN consemergencialeve.curpCliente IS 'La CURP del cliente';
COMMENT ON COLUMN consemergencialeve.nomMascota IS 'El nombre de la mascota que entro a consulta';
COMMENT ON COLUMN consemergencialeve.curpVeterinario IS 'La CURP del veterinario que atendio a la mascota';
COMMENT ON COLUMN consemergencialeve.idEstetica IS 'El id con el que se identifica la estetica';
COMMENT ON COLUMN consemergencialeve.precioEmergencia IS 'El precio por la consulta';
COMMENT ON COLUMN consemergencialeve.procedimiento IS 'El procedimiento llevado a cabo por el veterinario';

CREATE TABLE consemergenciaconsiderable(
	idConsulta INT NOT NULL UNIQUE,
	curpCliente CHAR(18) NOT NULL,
	nomMascota VARCHAR(50) NOT NULL CHECK(nomMascota <> ''),
	curpVeterinario CHAR(18) NOT NULL,
	idEstetica INT NOT NULL,
	precioEmergencia INT NOT NULL,
	procedimiento CHAR(100) CHECK(procedimiento <> '')
);
COMMENT ON TABLE consemergenciaconsiderable IS 'Tabla que contiene informacion sobre las consultas de emergencia considerable';
COMMENT ON COLUMN consemergenciaconsiderable.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN consemergenciaconsiderable.curpCliente IS 'La CURP del cliente';
COMMENT ON COLUMN consemergenciaconsiderable.nomMascota IS 'El nombre de la mascota que entro a consulta';
COMMENT ON COLUMN consemergenciaconsiderable.curpVeterinario IS 'La CURP del veterinario que atendio a la mascota';
COMMENT ON COLUMN consemergenciaconsiderable.idEstetica IS 'El id con el que se identifica la estetica';
COMMENT ON COLUMN consemergenciaconsiderable.precioEmergencia IS 'El precio por la consulta';
COMMENT ON COLUMN consemergenciaconsiderable.procedimiento IS 'El procedimiento llevado a cabo por el veterinario';

CREATE TABLE consemergenciagrave(
	idConsulta INT NOT NULL UNIQUE,
	curpCliente CHAR(18) NOT NULL,
	nomMascota VARCHAR(50) NOT NULL CHECK(nomMascota <> ''),
	curpVeterinario CHAR(18) NOT NULL,
	idEstetica INT NOT NULL,
	precioEmergencia INT NOT NULL,
	procedimiento CHAR(100) CHECK(procedimiento <> '')
);
COMMENT ON TABLE consemergenciagrave IS 'Tabla que contiene informacion sobre las consultas de emergencia grave';
COMMENT ON COLUMN consemergenciagrave.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN consemergenciagrave.curpCliente IS 'La CURP del cliente';
COMMENT ON COLUMN consemergenciagrave.nomMascota IS 'El nombre de la mascota que entro a consulta';
COMMENT ON COLUMN consemergenciagrave.curpVeterinario IS 'La CURP del veterinario que atendio a la mascota';
COMMENT ON COLUMN consemergenciagrave.idEstetica IS 'El id con el que se identifica la estetica';
COMMENT ON COLUMN consemergenciagrave.precioEmergencia IS 'El precio por la consulta';
COMMENT ON COLUMN consemergenciagrave.procedimiento IS 'El procedimiento llevado a cabo por el veterinario';

CREATE TABLE consnormal(
	idConsulta INT NOT NULL UNIQUE,
	curpCliente CHAR(18) NOT NULL,
	nomMascota VARCHAR(50) NOT NULL CHECK(nomMascota <> ''),
	curpVeterinario CHAR(18) NOT NULL,
	idEstetica INT NOT NULL,
	precioNormal INT NOT NULL,
	estadoSalud VARCHAR(20) CHECK(estadoSalud <> ''),
	motivo VARCHAR(50) CHECK(motivo <> ''),
	fecha DATE NOT NULL
);
COMMENT ON TABLE consnormal IS 'Tabla que contiene informacion sobre las consultas de emergencia grave';
COMMENT ON COLUMN consnormal.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN consnormal.curpCliente IS 'La CURP del cliente';
COMMENT ON COLUMN consnormal.nomMascota IS 'El nombre de la mascota que entro a consulta';
COMMENT ON COLUMN consnormal.curpVeterinario IS 'La CURP del veterinario que atendio a la mascota';
COMMENT ON COLUMN consnormal.idEstetica IS 'El id con el que se identifica la estetica';
COMMENT ON COLUMN consnormal.precioNormal IS 'El precio por la consulta';
COMMENT ON COLUMN consnormal.estadoSalud IS 'El estado de salud de la mascota';
COMMENT ON COLUMN consnormal.motivo IS 'El motivo de la consulta';
COMMENT ON COLUMN consnormal.fecha IS 'La fecha en la que se realizo la consulta';

CREATE TABLE medicamentos(
	idConsulta INT NOT NULL,
	medicamentos VARCHAR(50) NOT NULL
);
COMMENT ON TABLE medicamentos IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN medicamentos.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN medicamentos.medicamentos IS 'Los medicamentos de la mascota';

CREATE TABLE sintomaleve (
	idConsulta INT NOT NULL,
	sintoma VARCHAR (50)
);
COMMENT ON TABLE sintomaleve IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN sintomaleve.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN sintomaleve.sintoma IS 'Los sintomas de la mascota en consulta emergencia leve';

CREATE TABLE sintomaconsiderable (
	idConsulta INT NOT NULL,
	sintoma VARCHAR (50)
);
COMMENT ON TABLE sintomaconsiderable IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN sintomaconsiderable.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN sintomaconsiderable.sintoma IS 'Los sintomas de la mascota en consulta emergencia considerable';

CREATE TABLE sintomagrave (
	idConsulta INT NOT NULL,
	sintoma VARCHAR (50)
);
COMMENT ON TABLE sintomagrave IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN sintomagrave.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN sintomagrave.sintoma IS 'Los sintomas de la mascota en consulta emergencia grave';

CREATE TABLE generarconsemergencialeve(
	idConsulta INT NOT NULL,
	idRecibo INT NOT NULL UNIQUE
);
COMMENT ON TABLE generarconsemergencialeve IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN generarconsemergencialeve.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN generarconsemergencialeve.idRecibo IS 'El identificador del recibo de la consulta';

CREATE TABLE generarconsemergenciaconsiderable(
	idConsulta INT NOT NULL,
	idRecibo INT NOT NULL UNIQUE
);
COMMENT ON TABLE generarconsemergenciaconsiderable IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN generarconsemergenciaconsiderable.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN generarconsemergenciaconsiderable.idRecibo IS 'El identificador del recibo de la consulta';

CREATE TABLE generarconsemergenciagrave(
	idConsulta INT NOT NULL,
	idRecibo INT NOT NULL UNIQUE
);
COMMENT ON TABLE generarconsemergenciagrave IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN generarconsemergenciagrave.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN generarconsemergenciagrave.idRecibo IS 'El identificador del recibo de la consulta';

CREATE TABLE generarconsnormal(
	idConsulta INT NOT NULL,
	idRecibo INT NOT NULL UNIQUE
);
COMMENT ON TABLE generarconsnormal IS 'Tabla que contiene informacion sobre los medicamentos';
COMMENT ON COLUMN generarconsnormal.idConsulta IS 'El id que identifica a la consulta';
COMMENT ON COLUMN generarconsnormal.idRecibo IS 'El identificador del recibo de la consulta';

CREATE TABLE cliente(
    curp CHAR(18) NOT NULL UNIQUE,
    apellidoM VARCHAR(50) NOT NULL,
    apellidoP VARCHAR(50) NOT NULL,
    nombre VARCHAR(50) NOT NULL,
    estado VARCHAR(50) NOT NULL,
    calle VARCHAR(50) NOT NULL,
    numero INT NOT NULL,
    cp INT NOT NULL,
    telefono BIGINT NOT NULL, /*longitud*/
    cumpleanios DATE,
    email VARCHAR(100),
    esFrecuente BOOLEAN NOT NULL
);
COMMENT ON TABLE cliente IS 'Tabla que contiene la información de un cliente.';
COMMENT ON COLUMN cliente.curp IS 'Identificador del cliente, corresponde a su curp.';
COMMENT ON COLUMN cliente.apellidoM IS 'Apellido materno del cliente.';
COMMENT ON COLUMN cliente.apellidoP IS 'Apellido paterno del cliente.';
COMMENT ON COLUMN cliente.nombre IS 'Nombre del cliente.';
COMMENT ON COLUMN cliente.estado IS 'Estado en el que vive el cliente.';
COMMENT ON COLUMN cliente.calle IS 'Calle de la dirección del cliente.';
COMMENT ON COLUMN cliente.numero IS 'Número en la dirección del cliente.';
COMMENT ON COLUMN cliente.cp IS 'Código postal de la dirección del cliente.';
COMMENT ON COLUMN cliente.telefono IS 'Teléfono del cliente.';
COMMENT ON COLUMN cliente.cumpleanios IS 'Fecha de cumpleaños del cliente.';
COMMENT ON COLUMN cliente.email IS 'Dirección de correo electrónico del cliente.';
COMMENT ON COLUMN cliente.esFrecuente IS 'Indicador de frecuencia del cliente.';

CREATE TABLE tarjeta(
    numTarjeta VARCHAR(19) NOT NULL UNIQUE,
    curpCliente CHAR(18) NOT NULL,
    vencimiento DATE NOT NULL,
    titular VARCHAR(100) NOT NULL
);
COMMENT ON TABLE tarjeta IS 'Tabla que contiene la información de las tarjetas de un cliente.';
COMMENT ON COLUMN tarjeta.numTarjeta IS 'Número de tarjeta del cliente.';
COMMENT ON COLUMN tarjeta.curpCLiente IS 'Llave foránea correspondiente a la curp del dueño de la tarjeta.';
COMMENT ON COLUMN tarjeta.vencimiento IS 'Fecha de vencimiento de la tarjeta.';
COMMENT ON COLUMN tarjeta.titular IS 'Nombre del titular de la tarjeta.';

CREATE TABLE mascota(
    nomMascota VARCHAR(50) NOT NULL UNIQUE,
    curpCliente CHAR(18) NOT NULL,
	curpEstilista CHAR(18) NOT NULL,
    especie VARCHAR(50) NOT NULL,
    raza VARCHAR(50) NOT NULL,
    peso DECIMAL(5,2) NOT NULL,
    edad SMALLINT NOT NULL
);
COMMENT ON TABLE mascota IS 'Tabla que contiene informacion sobre las mascotas';
COMMENT ON COLUMN mascota.nomMascota IS 'El nombre de la mascota';
COMMENT ON COLUMN mascota.curpCliente IS 'El identificador del cliente';
COMMENT ON COLUMN mascota.curpEstilista IS 'El identificador del estilista';
COMMENT ON COLUMN mascota.especie IS 'La especie a la que pertenece la mascota';
COMMENT ON COLUMN mascota.raza IS 'La raza a la que pertenece la mascota';
COMMENT ON COLUMN mascota.peso IS 'El peso de la mascota';
COMMENT ON COLUMN mascota.edad IS 'El edad de la mascota';

 CREATE TABLE producto(
	 idProducto CHAR(10) NOT NULL UNIQUE CHECK(CHAR_LENGTH(idProducto) = 10) UNIQUE,
	 idEstetica INT CHECK(idEstetica <> 0),
	 idRecibo INT CHECK(idRecibo <> 0),
	 nombreImagen VARCHAR(30) NOT NULL CHECK(nombreImagen <> ''),
	 precio FLOAT CHECK(precio <> 0),
	 nombre VARCHAR(50) NOT NULL CHECK(nombre <> ''),
	 cantidad INT CHECK(cantidad <> 0),
	 descripcion VARCHAR(200) NOT NULL CHECK(descripcion <> ''),
	 tipo VARCHAR(30) NOT NULL CHECK(tipo <> ''),
	 caducidad DATE CHECK(caducidad > '2022-04-01'),
	 esProductoCaducable BOOLEAN NOT NULL
 );
COMMENT ON TABLE producto IS 'Tabla que contiene informacion sobre los productos';
COMMENT ON COLUMN producto.idProducto IS 'El identificador del producto';
COMMENT ON COLUMN producto.idEstetica IS 'El identificador de la estética en la que está el producto';
COMMENT ON COLUMN producto.idRecibo IS 'El identificador del recibo en el que se cobró este producto';
COMMENT ON COLUMN producto.nombreImagen IS 'El nombre de la imagen que corresponde a este producto';
COMMENT ON COLUMN producto.precio IS 'El precio del producto';
COMMENT ON COLUMN producto.nombre IS 'El nombre del producto';
COMMENT ON COLUMN producto.cantidad IS 'Es la cantidad de ejemplares de este producto en la estética';
COMMENT ON COLUMN producto.descripcion IS 'Es la descripción del producto';
COMMENT ON COLUMN producto.tipo IS 'El tipo de producto';
COMMENT ON COLUMN producto.caducidad IS 'La fecha de caducidad del producto';
COMMENT ON COLUMN producto.esProductoCaducable IS 'Es true si y sólo sí el producto es caducable';
 
 CREATE TABLE caja(
	 noCaja INT CHECK(noCaja <> 0) UNIQUE,
	 idEstetica INT CHECK(idEstetica <> 0)
 );
COMMENT ON TABLE caja IS 'Tabla que contiene informacion de la caja';
COMMENT ON COLUMN caja.noCaja IS 'El numero de la caja';
COMMENT ON COLUMN caja.idEstetica IS 'El identificador de la estetica';
 
 CREATE TABLE recibo(
	 idRecibo INT CHECK(idRecibo <> 0) UNIQUE,
	 idEstetica INT CHECK(idEstetica <> 0),
	 noCaja INT CHECK(noCaja <> 0),
	 esFisico BOOLEAN NOT NULL,
	 esOnline BOOLEAN NOT NULL
 );
COMMENT ON TABLE recibo IS 'Tabla que contiene informacion sobre los recibos';
COMMENT ON COLUMN recibo.idRecibo IS 'El numero identificador de los recibos';
COMMENT ON COLUMN recibo.idEstetica IS 'El numero identificador de los recibos';
COMMENT ON COLUMN recibo.noCaja IS 'El numero de caja en que se atendio al cliente';
COMMENT ON COLUMN recibo.esFisico IS 'Booleano que indica si es pago físico';
COMMENT ON COLUMN recibo.esOnline IS 'Booleano que indica si es pago online';

CREATE TABLE estetica(
	idEstetica INT NOT NULL UNIQUE,
	nombre VARCHAR (50) NOT NULL CHECK (nombre <>''),
	estado VARCHAR(50) NOT NULL CHECK (estado <>''),
	calle VARCHAR(50) NOT NULL CHECK (calle <>''),
	numero INT NOT NULL,
	cp INT CHECK(cp between 00000 and 99999),
	horario INT NOT NULL,
	noConsultorio INT NOT NULL
	
);
COMMENT ON COLUMN estetica.idEstetica IS 'El identificador de cada estética';
COMMENT ON COLUMN estetica.nombre IS 'El nombre de la estética';
COMMENT ON COLUMN estetica.calle IS 'Calle de la dirección de la estética';
COMMENT ON COLUMN estetica.numero IS 'Numero de la dirección de la estética';
COMMENT ON COLUMN estetica.cp IS 'Código postal de la dirección de la estética';
COMMENT ON COLUMN estetica.horario IS 'Horario de servicio de la estética';
COMMENT ON COLUMN estetica.noConsultorio IS 'Cantidad de consultorios de la estética';

CREATE TABLE telefono(
	telefono CHAR(10) CHECK (telefono SIMILAR TO '[0-9]*'),
	idEstetica SERIAL NOT NULL UNIQUE
);
COMMENT ON TABLE telefono IS 'Tabla que contiene informacion de cada teléfono de las estéticas';
COMMENT ON COLUMN telefono.telefono IS 'Cadena que guarda el número de teléfono';
COMMENT ON COLUMN telefono.idEstetica IS 'Identificador de la estética a la que pertenece este teléfono';


CREATE TABLE supervisor(
	curp CHAR(18) NOT NULL CHECK(CHAR_LENGTH(curp)=18),
	idEstetica INT NOT NULL,
	apellidoM VARCHAR (50) NOT NULL CHECK (apellidoM <>''),
	apellidoP VARCHAR (50) NOT NULL CHECK (apellidoP <>''),
	nombre VARCHAR (50) NOT NULL CHECK (nombre <>''),
	estado VARCHAR (50) NOT NULL CHECK (estado <>''),
	calle VARCHAR (50) NOT NULL CHECK (calle <>''),
	numero INT NOT NULL,
	cp INT CHECK(cp between 00000 and 99999),
	telefono CHAR(10) CHECK (telefono SIMILAR TO '%[0-9]%'),
	genero CHAR(1) CHECK(genero = 'M' or genero = 'F'),
	nacimiento DATE NOT NULL,
	salario INT NOT NULL,
	RFC VARCHAR (30) NOT NULL CHECK (RFC <>''),
	inicio VARCHAR(30) NOT NULL,
	fin VARCHAR(30) NOT NULL,
	fechaInicio DATE NOT NULL,
	fechaTermino DATE NOT NULL
	
);
COMMENT ON TABLE supervisor IS 'Tabla que contiene informacion del supervisor';
COMMENT ON COLUMN supervisor.curp IS 'El identificador del supervisor';
COMMENT ON COLUMN supervisor.idEstetica IS 'El identificador de la estetica';
COMMENT ON COLUMN supervisor.apellidoM IS 'El apellido materno del supervisor';
COMMENT ON COLUMN supervisor.apellidoP IS 'El apellido paterno del supervisor';
COMMENT ON COLUMN supervisor.nombre IS 'El nombre del supervisor';
COMMENT ON COLUMN supervisor.estado IS 'El estado donde vive el supervisor';
COMMENT ON COLUMN supervisor.calle IS 'La calle donde vive el supervisor';
COMMENT ON COLUMN supervisor.numero IS 'El número de casa donde vive el supervisor';
COMMENT ON COLUMN supervisor.cp IS 'El código postal de donde vive el supervisor';
COMMENT ON COLUMN supervisor.telefono IS 'El telefono del supervisor';
COMMENT ON COLUMN supervisor.genero IS 'El genero del supervisor';
COMMENT ON COLUMN supervisor.nacimiento IS 'La fecha de nacimiento del supervisor';
COMMENT ON COLUMN supervisor.salario IS 'El salario que gana el supervisor';
COMMENT ON COLUMN supervisor.RFC IS 'El RFC del supervisor';
COMMENT ON COLUMN supervisor.inicio IS 'Representa la hora de inicio de horario del supervisor';
COMMENT ON COLUMN supervisor.fin IS 'Representa la hora de salida del supervisor';
COMMENT ON COLUMN supervisor.fechaInicio IS 'Fecha en que el supervisor comenzo a trabajar en la veterinaria';
COMMENT ON COLUMN supervisor.fechaTermino IS 'Fecha en que el supervisor dejó de trabajar en la veterinaria';


CREATE TABLE veterinario(
	curp CHAR(18) NOT NULL CHECK(CHAR_LENGTH(curp)=18),
	idEstetica INT NOT NULL,
	apellidoM VARCHAR (50) NOT NULL CHECK (apellidoM <>''),
	apellidoP VARCHAR (50) NOT NULL CHECK (apellidoP <>''),
	nombre VARCHAR (50) NOT NULL CHECK (nombre <>''),
	estado VARCHAR (50) NOT NULL CHECK (estado <>''),
	calle VARCHAR (50) NOT NULL CHECK (calle <>''),
	numero INT NOT NULL,
	cp INT CHECK(cp between 00000 and 99999),
	telefono CHAR(10) CHECK (telefono SIMILAR TO '%[0-9]%'),
	genero CHAR(1) CHECK(genero = 'M' or genero = 'F'),
	nacimiento DATE NOT NULL,
	salario INT NOT NULL,
	RFC VARCHAR (30) NOT NULL CHECK (RFC <>''),
	inicio VARCHAR(30) NOT NULL,
	fin VARCHar(30) NOT NULL,
	noPacientes INT NOT NULL,
	fechaInicio DATE NOT NULL,
	fechaTermino DATE NOT NULL
	);
COMMENT ON TABLE veterinario IS 'Tabla que contiene informacion de los veterinarios';
COMMENT ON COLUMN veterinario.curp IS 'Clave unica de registro de poblacion';
COMMENT ON COLUMN veterinario.idEstetica IS 'numero de identifiacion unica para las esteticas';
COMMENT ON COLUMN veterinario.apellidoM IS 'Apellido materno del veterinario';
COMMENT ON COLUMN veterinario.apellidoP IS 'Apellido paterno del veterinario';
COMMENT ON COLUMN veterinario.nombre IS 'Nombre del veterinario';
COMMENT ON COLUMN veterinario.estado IS 'Estado donde reside el veterinario';
COMMENT ON COLUMN veterinario.calle IS 'nombre de la calle donde reside el veterinario';
COMMENT ON COLUMN veterinario.numero IS 'numero de la casa del veterinario';
COMMENT ON COLUMN veterinario.cp IS 'codigo postal del veterinario';
COMMENT ON COLUMN veterinario.telefono IS 'telefono del veterinario';
COMMENT ON COLUMN veterinario.genero IS 'genero del veterinario';
COMMENT ON COLUMN veterinario.nacimiento IS 'fecha de nacimiento del veterinario';
COMMENT ON COLUMN veterinario.salario IS 'salario del veterinario';
COMMENT ON COLUMN veterinario.RFC IS 'RFC del veterinario';
COMMENT ON COLUMN veterinario.inicio IS 'hora de inicio de la jornada laboral del veterinario';
COMMENT ON COLUMN veterinario.fin IS 'hora del fin de la jornada laboral del veterinario';
COMMENT ON COLUMN veterinario.fechaInicio IS 'fecha de contratacion del veterinario';
COMMENT ON COLUMN veterinario.fechaTermino IS 'fecha de despido del veterinario';
	

CREATE TABLE estilista(
	curp CHAR(18) NOT NULL CHECK(CHAR_LENGTH(curp)=18),
	idEstetica INT NOT NULL,
	apellidoM VARCHAR (50) NOT NULL CHECK (apellidoM <>''),
	apellidoP VARCHAR (50) NOT NULL CHECK (apellidoP <>''),
	nombre VARCHAR (50) NOT NULL CHECK (nombre <>''),
	estado VARCHAR (50) NOT NULL CHECK (estado <>''),
	calle VARCHAR (50) NOT NULL CHECK (calle <>''),
	numero INT NOT NULL,
	cp INT CHECK(cp between 00000 and 99999),
	telefono CHAR(10) CHECK (telefono SIMILAR TO '%[0-9]%'),
	genero CHAR(1) CHECK(genero = 'M' or genero = 'F'),
	nacimiento DATE NOT NULL,
	salario INT NOT NULL,
	noCertificado INT NOT NULL,
	fechaInicio DATE NOT NULL,
	fechaTermino DATE NOT NULL
	);
	
COMMENT ON TABLE estilista IS 'Tabla que contiene información sobre el estilista ';
COMMENT ON COLUMN estilista.curp IS 'Identificador del estilista';
COMMENT ON COLUMN estilista.idEstetica IS 'Identificador de la estética';
COMMENT ON COLUMN estilista.apellidoM IS 'Apellido materno del estilista';
COMMENT ON COLUMN estilista.apellidoP IS 'Apellido paterno del estilista';
COMMENT ON COLUMN estilista.nombre IS 'Nombre del estilista ';
COMMENT ON COLUMN estilista.estado IS 'Estado de residencia';
COMMENT ON COLUMN estilista.calle IS 'Calle del domicilio';
COMMENT ON COLUMN estilista.numero IS 'Número del domicilio';
COMMENT ON COLUMN estilista.cp IS 'código postal del domicilio ';
COMMENT ON COLUMN estilista.telefono IS 'Teléfono del estilista ';
COMMENT ON COLUMN estilista.genero IS 'Género del estilista';
COMMENT ON COLUMN estilista.nacimiento  IS 'Fecha de nacimiento del estilista';
COMMENT ON COLUMN estilista.salario IS 'Remuneración económica';
COMMENT ON COLUMN estilista.fechaInicio IS 'Inicio de la jornada laboral';
COMMENT ON COLUMN estilista.fechaTermino  IS 'Fin de la jornada laboral';

CREATE TABLE apartado(
	llave SERIAL NOT NULL UNIQUE,
	idEstetica SERIAL NOT NULL,
	tipoApartado VARCHAR(50)
);
COMMENT ON TABLE apartado IS 'Tabla que contiene información sobre los apartados';
COMMENT ON COLUMN apartado.llave IS 'Discriminante de los apartados';
COMMENT ON COLUMN apartado.idEstetica IS 'Identificador de la estética en la que está este apartado';
COMMENT ON COLUMN apartado.tipoApartado IS 'Tipo del apartado';

ALTER TABLE apartado ADD CONSTRAINT apartado_pkey PRIMARY KEY (llave);
COMMENT ON CONSTRAINT apartado_pkey ON apartado IS 'La llave primaria de apartado';
ALTER TABLE apartado ADD CONSTRAINT apartado_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica(idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT apartado_fkey ON apartado IS 'La llave foranea de la tabla apartado que hace referencia al identificador de la estética';

--llaves foraneas
ALTER TABLE supervisor ADD CONSTRAINT supervisor_pkey PRIMARY KEY (curp);
COMMENT ON CONSTRAINT supervisor_pkey ON supervisor IS 'La llave primaria del supervisor, corresponde a su curp';
ALTER TABLE supervisor ADD CONSTRAINT supervisor_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica (idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT supervisor_fkey ON supervisor IS 'La llave foránea de supervisor que hace referencia al
idenntificador de la estética en la que trabaja';

ALTER TABLE veterinario ADD CONSTRAINT veterinario_pkey PRIMARY KEY (curp);
COMMENT ON CONSTRAINT veterinario_pkey ON veterinario IS 'La llave primaria del veterinario, corresponde a su curp';
ALTER TABLE veterinario ADD CONSTRAINT veterinario_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica (idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT veterinario_fkey ON veterinario IS 'La llave foránea de veterinario que hace referencia al 
idenntificador de la estética en la que trabaja';

ALTER TABLE estilista ADD CONSTRAINT estilista_pkey PRIMARY KEY (curp);
COMMENT ON CONSTRAINT estilista_pkey ON estilista IS 'La llave primaria del estilista, corresponde a su curp';
ALTER TABLE estilista ADD CONSTRAINT estilista_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica (idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT estilista_fkey ON estilista IS 'La llave foránea de estilista que hace referencia al 
idenntificador de la estética en la que trabaja';

--LLAVES compuestas
ALTER TABLE telefono ADD CONSTRAINT telefono_pkey PRIMARY KEY (telefono, idEstetica);
COMMENT ON CONSTRAINT telefono_pkey ON telefono IS 'La llave primaria compuesta del teléfono';
ALTER TABLE telefono ADD CONSTRAINT telefono_fkey FOREIGN KEY (idEstetica)
REFERENCES estetica (idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT telefono_fkey ON telefono IS 'Referencia a la llave foránea de teléfono. Corresponde al id de
la estética en la que está este teléfono.';

--llaves primarias
ALTER TABLE estetica ADD CONSTRAINT estetica_pkey PRIMARY KEY (idEstetica);
COMMENT ON CONSTRAINT estetica_pkey ON estetica IS 'La llave primaria de la estética';
/*
 * Llaves producto
 */ 
 ALTER TABLE producto ADD CONSTRAINT producto_pkey PRIMARY KEY(idProducto, idEstetica);
 COMMENT ON CONSTRAINT producto_pkey ON producto IS 'La llave primaria compuesta del producto';
 ALTER TABLE producto ADD CONSTRAINT producto_fkeyRecibo FOREIGN KEY(idRecibo)
REFERENCES recibo(idRecibo) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT producto_fkeyRecibo ON producto IS 'Llave foránea de producto, hace referencia al id del
recibo en el que se cobró el producto';

/*
 * Llaves caja
 */ 
 ALTER TABLE caja ADD CONSTRAINT caja_pkey PRIMARY KEY(noCaja, idEstetica);
 COMMENT ON CONSTRAINT caja_pkey ON caja IS 'La llave primaria de la caja';

/*
 * Llaves recibo
 */
 ALTER TABLE recibo ADD CONSTRAINT recibo_pkey PRIMARY KEY(idRecibo);
 COMMENT ON CONSTRAINT recibo_pkey ON recibo IS 'La llave primaria del recibo';
 ALTER TABLE recibo ADD CONSTRAINT recibo_fkeyRecibo FOREIGN KEY(idEstetica, noCaja)
REFERENCES caja(idEstetica, noCaja) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT recibo_fkeyRecibo ON recibo IS 'Llave foránea de recibo, corresponde a la llave
compuesta de caja';

/*
 * Llaves cliente
 */
 ALTER TABLE cliente ADD CONSTRAINT cliente_pkey PRIMARY KEY(curp);
 COMMENT ON CONSTRAINT cliente_pkey ON cliente IS 'La llave primaria del cliente';

 /*
 * Llaves tarjeta (INICIO)
 */
ALTER TABLE tarjeta ADD CONSTRAINT tarjeta_pkey PRIMARY KEY(numTarjeta);
COMMENT ON CONSTRAINT tarjeta_pkey ON tarjeta IS 'La llave primaria de la tarjeta';
ALTER TABLE tarjeta ADD CONSTRAINT tarjeta_fkeyCliente FOREIGN KEY(curpCliente)
REFERENCES cliente(curp) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT tarjeta_fkeyCliente ON tarjeta IS 'La llave foranea de la tarjeta que hace referencia a cliente';

/*
 * Llaves mascota
 */
ALTER TABLE mascota ADD CONSTRAINT mascota_pkey PRIMARY KEY(nomMascota, curpCliente);
COMMENT ON CONSTRAINT mascota_pkey ON mascota IS 'La llave compuesta de la tabla mascota';
ALTER TABLE mascota ADD CONSTRAINT mascota_fkeyCliente FOREIGN KEY(curpCliente)
REFERENCES cliente(curp) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT mascota_fkeyCliente ON mascota IS 'La llave foranea de la mascota que hace referencia a cliente';
ALTER TABLE mascota ADD CONSTRAINT mascota_fkeyEstilista FOREIGN KEY(curpEstilista)
REFERENCES estilista(curp) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT mascota_fkeyEstilista ON mascota IS 'La llave foranea de la mascota que hace referencia a estilista';

/*
LLAVES PRIMARIAS
*/

/*
LLAVES COMPUESTAS
*/
ALTER TABLE medicamentos ADD CONSTRAINT medicamentos_pkey PRIMARY KEY (idConsulta, medicamentos);
COMMENT ON CONSTRAINT medicamentos_pkey ON medicamentos IS 'La llave compuesta de la tabla medicamentos';
ALTER TABLE medicamentos ADD CONSTRAINT idConsulta_fkey1 FOREIGN KEY (idConsulta) 
REFERENCES consnormal(idConsulta)  ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT idConsulta_fkey1 ON medicamentos IS 'La llave foranea de los medicamentos que hace referencia a consnormal';
ALTER TABLE sintomaleve ADD CONSTRAINT sintomaleve_pkey PRIMARY KEY (idConsulta, sintoma);
COMMENT ON CONSTRAINT sintomaleve_pkey ON sintomaleve IS 'La llave compuesta de la tabla sintomaleve';
ALTER TABLE sintomaleve ADD CONSTRAINT sintomaleve_fkey1 FOREIGN KEY (idConsulta) 
REFERENCES consemergencialeve(idConsulta) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT sintomaleve_fkey1 ON sintomaleve IS 'La llave foránea de la tabla sintomaleve';
ALTER TABLE sintomaconsiderable ADD CONSTRAINT sintomaconsiderable_pkey PRIMARY KEY (idConsulta,sintoma);
COMMENT ON CONSTRAINT sintomaconsiderable_pkey ON sintomaconsiderable IS 'La llave primaria de la tabla sintomaconsiderable';
ALTER TABLE sintomaconsiderable ADD CONSTRAINT sintomaconsiderable_fkey1 FOREIGN KEY (idConsulta) 
REFERENCES consemergenciaconsiderable(idConsulta) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT sintomaconsiderable_fkey1 ON sintomaconsiderable IS 'La llave foránea de la tabla sintomaconsiderable ';
ALTER TABLE sintomagrave ADD CONSTRAINT sintomagrave_pkey PRIMARY KEY (idConsulta,sintoma);
COMMENT ON CONSTRAINT sintomagrave_pkey ON sintomagrave IS 'La llave primaria de la tabla sintomagrave';
ALTER TABLE sintomagrave ADD CONSTRAINT sintomagrave_fkey1 FOREIGN KEY (idConsulta) 
REFERENCES consemergenciagrave(idConsulta) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT sintomagrave_fkey1 ON sintomagrave IS 'La llave foránea de la tabla sintomagrave';

/*
LLAVES FORANEAS
*/
ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_pkey PRIMARY KEY (idConsulta);
COMMENT ON CONSTRAINT consemergencialeve_pkey ON consemergencialeve IS 'La 1ra llave primaria de la tabla consemergencialeve ';
ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_fkey2 FOREIGN KEY (curpCliente, nomMascota) 
REFERENCES mascota(curpCliente, nomMascota) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consemergencialeve_fkey2 ON consemergencialeve IS 'La 2da llave  de la tabla consemergencialeve';
ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_fkey3 FOREIGN KEY (curpVeterinario) 
REFERENCES veterinario(curp) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consemergencialeve_fkey3 ON consemergencialeve IS 'La 3ra llave  de la tabla ';
ALTER TABLE consemergencialeve ADD CONSTRAINT consemergencialeve_fkey4 FOREIGN KEY (idEstetica) 
REFERENCES estetica(idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consemergencialeve_fkey4 ON consemergencialeve IS 'La 4ta llave  de la tabla consemergencialeve ';
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_pkey PRIMARY KEY (idConsulta);
COMMENT ON CONSTRAINT consemergenciaconsiderable_pkey ON consemergenciaconsiderable IS 'La llave primaria de la tabla consemergenciaconsiderable';
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_fkey2 FOREIGN KEY (curpCliente, nomMascota) 
REFERENCES mascota(curpCliente, nomMascota) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consemergenciaconsiderable_fkey2 ON consemergenciaconsiderable IS 'La 1ra llave foránea de la tabla consemergenciaconsiderable ';
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_fkey3 FOREIGN KEY (curpVeterinario) 
REFERENCES veterinario(curp) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consemergenciaconsiderable_fkey3 ON consemergenciaconsiderable IS 'La 2da llave foránea de la tabla consemergenciaconsiderable ';
ALTER TABLE consemergenciaconsiderable ADD CONSTRAINT consemergenciaconsiderable_fkey4 FOREIGN KEY (idEstetica) 
REFERENCES estetica(idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consemergenciaconsiderable_fkey4 ON consemergenciaconsiderable IS 'La 3ra llave foránea de la tabla consemergenciaconsiderable ';
ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_pkey PRIMARY KEY (idConsulta);
COMMENT ON CONSTRAINT consemergenciagrave_pkey ON consemergenciagrave IS 'La llave primaria de la tabla consemergenciagrave';
ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_fkey2 FOREIGN KEY (curpCliente, nomMascota) 
REFERENCES mascota(curpCliente, nomMascota) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_fkey3 FOREIGN KEY (curpVeterinario) 
REFERENCES veterinario(curp) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consemergenciagrave_fkey3 ON consemergenciagrave IS 'La 3ra llave foránea de la tabla consemergenciagrave ';
ALTER TABLE consemergenciagrave ADD CONSTRAINT consemergenciagrave_fkey4 FOREIGN KEY (idEstetica) 
REFERENCES estetica(idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consemergenciagrave_fkey4 ON consemergenciagrave IS 'llave foranea de la tabla consemergenciagrave que hace referencia al idEstetica de estetica';
ALTER TABLE consnormal ADD CONSTRAINT consnormal_pkey PRIMARY KEY (idConsulta);
COMMENT ON CONSTRAINT consnormal_pkey ON consnormal IS 'llave primaria de la tabla consnormal';
ALTER TABLE consnormal ADD CONSTRAINT consnormal_fkey2 FOREIGN KEY (curpCliente, nomMascota) 
REFERENCES mascota(curpCliente, nomMascota) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consnormal_fkey2 ON consnormal IS 'llave foranea de la tabla consnormal que hace referencia al curpCliente y nomMascota de mascota';
ALTER TABLE consnormal ADD CONSTRAINT consnormal_fkey3 FOREIGN KEY (curpVeterinario) 
REFERENCES veterinario(curp) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consnormal_fkey3 ON consnormal IS 'llave foranea de la tabla consnormal que hace referencia al curp de veterinario';
ALTER TABLE consnormal ADD CONSTRAINT consnormal_fkey4 FOREIGN KEY (idEstetica) 
REFERENCES estetica(idEstetica) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT consnormal_fkey4 ON consnormal IS 'llave foranea de la tabla consnormal que hace referencia al idEstetica de estetica';
ALTER TABLE generarconsemergencialeve ADD CONSTRAINT generarconsemergencialeve_fkey1 FOREIGN KEY (idRecibo) 
REFERENCES recibo(idRecibo) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT generarconsemergencialeve_fkey1 ON generarconsemergencialeve IS 'llave foranea de la tabla generarconsemergencialeve que hace referencia al idrecibo de recibo';
ALTER TABLE generarconsemergencialeve ADD CONSTRAINT generarconsemergencialeve_fkey2 FOREIGN KEY (idConsulta ) 
REFERENCES consemergencialeve (idConsulta) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT generarconsemergencialeve_fkey2 ON generarconsemergencialeve IS 'llave foranea de la tabla generarconsemergencialeve que hace referencia al idconsulta de consemergencialeve';
ALTER TABLE generarconsemergenciaconsiderable ADD CONSTRAINT generarconsemergenciaconsiderable_fkey1 FOREIGN KEY (idRecibo) 
REFERENCES recibo(idRecibo) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT generarconsemergenciaconsiderable_fkey1 ON generarconsemergenciaconsiderable IS 'llave foranea de la tabla generarconsemergenciaconsiderable que hace referencia al idrecibo de recibo';
ALTER TABLE generarconsemergenciaconsiderable ADD CONSTRAINT generarconsemergenciaconsiderable_fkey2 FOREIGN KEY (idConsulta) 
REFERENCES consemergenciaconsiderable (idConsulta) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT generarconsemergenciaconsiderable_fkey2 ON generarconsemergenciaconsiderable IS 'llave foranea de la tabla generarconsemergenciaconsiderable que hace referencia al idConsulta de consemegenciaconsiderable';
ALTER TABLE generarconsemergenciagrave ADD CONSTRAINT generarconsemergenciagrave_fkey1 FOREIGN KEY (idRecibo ) 
REFERENCES recibo(idRecibo) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT generarconsemergenciagrave_fkey1 ON generarconsemergenciagrave IS 'llave foranea de la tabla generarconsemergenciagrave que hace referencia al idrecibo de recibo';
ALTER TABLE generarconsemergenciagrave ADD CONSTRAINT generarconsemergenciagrave_fkey2 FOREIGN KEY (idConsulta ) 
REFERENCES consemergenciagrave (idConsulta) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT generarconsemergenciagrave_fkey2 ON generarconsemergenciagrave IS 'llave foranea de la tabla generarconsemergenciagrave que hace referencia al idConsulta de consemergenciagrave';
ALTER TABLE generarconsnormal ADD CONSTRAINT generarconsnormal_fkey1 FOREIGN KEY (idRecibo) 
REFERENCES recibo(idRecibo) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT generarconsnormal_fkey1 ON generarconsnormal IS 'llave foranea de la tabla generarconsnormal que hace referencia al idrecibo de recibo';
ALTER TABLE generarconsnormal ADD CONSTRAINT generarconsnormal_fkey2 FOREIGN KEY (idConsulta) 
REFERENCES consnormal (idConsulta) ON UPDATE CASCADE ON DELETE CASCADE;
COMMENT ON CONSTRAINT generarconsnormal_fkey2 ON generarconsnormal IS 'llave foranea de la tabla generarconsnormal que hace referencia al idconsulta de consnormal';
