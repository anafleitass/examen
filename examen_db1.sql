CREATE TABLE personajes(
      per_cod SERIAL PRIMARY KEY
    , per_nombre VARCHAR(80) NOT NULL
    , per_imagen TEXT NOT NULL
  	, per_descripcion VARCHAR(255) NOT NULL
	, per_ki INTEGER
    , raz_cod INTEGER NOT NULL
    , gen_cod INTEGER NOT NULL
    , afi_cod INTEGER NOT NULL
    , pla_cod INTEGER NOT NULL
	, per_nacimiento TIMESTAMP NOT NULL DEFAULT NOW()
    , FOREIGN KEY(pla_cod) REFERENCES planetas(pla_cod) ON DELETE RESTRICT ON UPDATE CASCADE
	, FOREIGN KEY( raz_cod) REFERENCES raza(raz_cod) ON DELETE RESTRICT ON UPDATE CASCADE
	, FOREIGN KEY (gen_cod) REFERENCES generos(gen_cod) ON DELETE RESTRICT ON UPDATE CASCADE
	, FOREIGN KEY (afi_cod) REFERENCES afiliaciones(afi_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
--drop table personajes;
--ALTER TABLE planetas ALTER COLUMN pla_imagen TYPE text;
CREATE TABLE planetas(
      pla_cod SERIAL PRIMARY KEY
    , pla_nombre VARCHAR(80) NOT NULL
    , pla_imagen TEXT NOT NULL
    , pla_destruido BOOLEAN NOT NULL
    , pla_descripcion TEXT NOT NULL
    , pla_creacionfecha TIMESTAMP NOT NULL DEFAULT NOW()
);
--drop table transformaciones;
CREATE TABLE transformaciones(
    tra_cod SERIAL PRIMARY KEY
    , tra_nombre VARCHAR(255) NOT NULL
    , tra_imagen TEXT NOT NULL
    , tra_ki INTEGER NOT NULL
	,per_cod INTEGER
	,FOREIGN KEY(per_cod) REFERENCES personajes(per_cod) ON DELETE RESTRICT ON UPDATE CASCADE
);
CREATE TABLE afiliaciones (
	 afi_cod SERIAL PRIMARY KEY
	,afi_nombre VARCHAR (80)
	,afi_descripcion VARCHAR(255)
);
--ALTER TABLE raza ALTER COLUMN raz_poderes TYPE VARCHAR (255);

CREATE TABLE raza (
 	raz_cod SERIAL PRIMARY KEY,
  	raz_nombre VARCHAR(80) NOT NULL,
  	raz_descripcion TEXT NOT NULL,
 	raz_poderes VARCHAR(80) NOT NULL,
  	raz_vulnerabilidad VARCHAR(80) NOT NULL
);

CREATE TABLE generos (
gen_cod SERIAL PRIMARY KEY,
  gen_nombre VARCHAR (80)
);

