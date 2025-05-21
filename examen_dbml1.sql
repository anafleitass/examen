INSERT INTO generos(gen_nombre) VALUES ('HOMBRE');
INSERT INTO generos(gen_nombre) VALUES ('MUJER');
--planetas
INSERT INTO planetas (pla_cod,pla_nombre, pla_imagen, pla_destruido, pla_descripcion)
VALUES(1,'Tierra','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699145184/yq8zw7kk4fmhgyj4z0c7.webp', FALSE, 'El planeta natal de la humanidad');

INSERT INTO planetas (pla_cod,pla_nombre, pla_imagen, pla_destruido, pla_descripcion)
VALUES(2,'Namek','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699145134/wxedvvh8kiyw00psvphl.webp', FALSE, 'Planeta natal de los Namekianos. Escenario de importantes batallas y la obtención de las Dragon Balls de Namek.');

INSERT INTO planetas (pla_cod,pla_nombre, pla_imagen, pla_destruido, pla_descripcion)
VALUES(3,'Vegueta','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699145184/yq8zw7kk4fmhgyj4z0c7.webp', TRUE, 'El planeta Vegeta, conocido como planeta Plant antes del fin de la Guerra Saiyan-tsufruiana en el año 730, es un planeta rocoso ficticio de la serie de manga y anime Dragon Ball y localizado en la Vía Láctea de las Galaxias del Norte del Universo 7 hasta su destrucción a manos de Freezer en los años 737-739. Planeta natal de los Saiyans, destruido por Freezer. Anteriormente conocido como Planeta Plant.');

INSERT INTO planetas (pla_cod,pla_nombre, pla_imagen, pla_destruido, pla_descripcion)
VALUES(4,'Freezer','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699145256/d1vystda6qykng2jgyl9.webp', TRUE, 'Planeta artificial utilizado por Freezer como base de operaciones y centro de clonación.');

INSERT INTO planetas (pla_cod,pla_nombre, pla_imagen, pla_destruido, pla_descripcion)
VALUES(5,'Planeta de Bills','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699146331/jgmkxichfmsbtd2hmkcd.webp', FALSE, 'Planeta de Bills un cuerpo celeste ubicado dentro del mundo de los vivos del Universo 7');

--RAZA
INSERT INTO raza (raz_nombre,raz_descripcion,raz_poderes,raz_vulnerabilidad) VALUES ('Saiyajines','raza extraterrestre de guerreros, conocidos por su gran poder y habilidades de combate','aumentar su fuerza tras recuperarse de lesiones mortales','cola');

INSERT INTO raza (raz_nombre,raz_descripcion,raz_poderes,raz_vulnerabilidad) VALUES ('Humanos','son seres humanos de carne y hueso que habitan la Tierra','son capaces de desarrollar una variedad de habilidades a través del entrenamiento y el desarrollo de su Ki','poder relativamente bajo');

INSERT INTO raza (raz_nombre,raz_descripcion,raz_poderes,raz_vulnerabilidad) VALUES ('Demonio','son una especie alienígena de la saga Dragon Ball, caracterizados por su gran poder y habilidades especiales','manipulación de magia, vuelo, ataques de Ki, y transformaciones.','débiles ante la luz solar y prosperan en la oscuridad');

INSERT INTO raza (raz_nombre,raz_descripcion,raz_poderes,raz_vulnerabilidad) VALUES ('Namekiano','son una raza reconocida por haber habitado el planeta Namek y posteriormente de nuevo Namek','regeneración y la capacidad de crear las Esferas del Dragón.','debilidad a los sonidos agudos, especialmente los silbidos.');
--AFICIONES

INSERT INTO afiliaciones (afi_nombre, afi_descripcion) VALUES ('Guerreros Z','Grupo de poderosos luchadores que protegen la Tierra y el universo de amenazas.')
INSERT INTO afiliaciones (afi_nombre, afi_descripcion) VALUES ('Ejercito de FREEZER','Organizacion galectica dirigida por freezer.')
 --personajes
INSERT INTO personajes (per_nombre,per_imagen,per_descripcion,per_ki,raz_cod,gen_cod,afi_cod,pla_cod) 
VALUES ('Vegueta','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044422/i9hpfjplth6gjudvhsx3.webp','personaje icónico de la serie Dragon Ball, conocido por su naturaleza orgullosa, su carácter fuerte y su obsesión por superar a Goku',500000,1,1,1,3);

INSERT INTO personajes (per_nombre,per_imagen,per_descripcion,per_ki,raz_cod,gen_cod,afi_cod,pla_cod) 
VALUES('Freezer','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044513/ux3n5u0tjdvysjao4w8s.webp','Freezer es el tirano espacial y el principal antagonista de la saga de Freezer',2000000,3,1,2,4)

 INSERT INTO personajes (per_nombre,per_imagen,per_descripcion,per_ki,raz_cod,gen_cod,afi_cod,pla_cod) 
VALUES ('Piccoro','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699044481/u9fhpc9smihu2kud3cuc.webp','Es un namekiano que surgió tras ser creado en los últimos momentos de vida de su padre, siendo su actual reencarnación',300000,4,1,1,2);

per_nombre VARCHAR(80) NOT NULL
    , per_imagen VARCHAR(255) NOT NULL
  	, per_descripcion VARCHAR(255) NOT NULL
    , raz_cod INTEGER NOT NULL
    , gen_cod INTEGER NOT NULL
    , afi_cod INTEGER NOT NULL
    , pla_cod INTEGER NOT NULL

--transformaciones
INSERT INTO transformaciones(tra_nombre,tra_imagen,tra_ki,per_cod)
VALUES('SSJ','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699102175/dnbpmmovwjguohzx01lg.png',100000000,3);

INSERT INTO transformaciones(tra_nombre,tra_imagen,tra_ki,per_cod)
VALUES ('Freezer segunda forma','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699103384/nmxb4cjfjo5rfosxkxji.png',50000000,4);

INSERT INTO transformaciones(tra_nombre,tra_imagen,tra_ki,per_cod)
VALUES ('Piccoro Orange','https://res.cloudinary.com/dgtgbyo76/image/upload/v1699103138/hjgmzwrquikst59vgl1h.png',800000000,5) ;

--EJERCICIOS
--4 
SELECT 
  g.gen_cod,g.gen_nombre,COUNT(p.per_cod) AS cantidad_personajes FROM generos g
LEFT JOIN personajes p ON g.gen_cod = p.gen_cod GROUP BY g.gen_cod, g.gen_nombre ORDER BY g.gen_cod;

--5
SELECT MIN(per_cod) AS per_cod,  'Nro de registros con la letra P' AS descripcion, 
  COUNT(*) AS cantidad FROM personajes WHERE per_nombre LIKE 'P%';

--6
SELECT per_cod, per_nombre FROM personajes
WHERE LOWER(per_descripcion) LIKE '% obsesión por superar a goku%';

--7
SELECT per_nombre FROM personajes WHERE pla_cod NOT IN (SELECT pla_cod FROM planetas WHERE pla_nombre LIKE 'P%');

--8
SELECT 
  p.per_cod, p.per_nombre,a.afi_nombre,LENGTH(p.per_descripcion) AS cantidad_caracteres
  FROM personajes p JOIN afiliaciones a ON p.afi_cod = a.afi_cod;
  
--9
SELECT per_cod, per_nombre, LENGTH(per_descripcion) AS cantidad_caracteres FROM personajes
WHERE LENGTH(per_descripcion) = (SELECT MAX(LENGTH(per_descripcion))FROM personajes
);

--10
SELECT per_cod, per_nombre, LENGTH(per_descripcion) AS cantidad_caracteres FROM personajes
WHERE LENGTH(per_descripcion) = (SELECT MIN(LENGTH(per_descripcion))FROM personajes
);