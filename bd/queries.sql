/* Peleadores
Crear peleador
Leer todos los peleadores
Leer un peleador en particular
Actualizar un peleador
Borrar un peleador

Estilo de Pelea
Crear estilo de pelea
Leer todos los estilos de pelea
Leer un estilo de pelea en particular
Actualizar un estilo de pelea
Borrar un estilo de pelea

Categoria
Crear categoria
Leer todos las categorias
Leer una ecategoria en particular
Actualizar una categoria
Borrar una categoria

Estilos por peleador
Crear Estilos por peleador
Leer todos los estilos de todos los peleadores
Leer los estilos de un peleador en particular
Actualizar estilos por peleador
Borrar estilo por peleador

Catálogo de nacionalidades
Crear un país
Leer todos los paises
Leer un país en particular
Actualizar un país
Borrar un país

*/

USE UFC;
INSERT INTO peleadores(nombre,fechaDeNacimiento,genero,pais_id,categoria_id)VALUES("Edson Gutierrez", "2003-02-07","M",7,4);
SELECT * FROM peleadores;
SELECT * FROM peleadores WHERE peleador_id = 1;
UPDATE peleadores SET nombre="Rocky", fechaDeNacimiento="1912-05-01",genero="M", pais_id=65,categoria_id=11 WHERE peleador_id = 9;
SELECT * FROM peleadores;
DELETE FROM peleadores WHERE peleador_id = 11;
SELECT * FROM peleadores;

INSERT INTO estilosDePelea (nombreDelEstilo,origen) VALUES ("lima lama","Islas Polinesias");
SELECT * FROM estilosDePelea;
SELECT * FROM estilosDePelea WHERE estilo_id = 1;
UPDATE estilosDePelea SET nombreDelEstilo = "Full Contact", origen = "Estados Unidos" WHERE estilo_id = 4;
SELECT * FROM estilosDePelea;
DELETE FROM estilosDePelea WHERE estilo_id = 11;
SELECT * FROM estilosDePelea;

INSERT INTO categorias (nombre, pesoLimiteSuperior, pesoLimiteInferior) VALUES ("peso atomo",47,42);
SELECT * FROM categorias;
SELECT * FROM categorias WHERE categoria_id = 1;
UPDATE categorias SET nombre = "peso completo", pesoLimiteSuperior = 150, pesoLimiteInferior = 120 WHERE categoria_id = 11;
SELECT * FROM categorias;
DELETE FROM categorias WHERE categoria_id = 12;
SELECT * FROM categorias;

INSERT INTO estilosPorPeleador(peleador_id,estilo_id) VALUES (10,10);
SELECT * FROM estilosPorPeleador;
SELECT * FROM estilosPorPeleador WHERE estilosPorPeleador_id = 1;
UPDATE estilosPorPeleador SET peleador_id = 3, estilo_id = 3 WHERE estilosPorPeleador_id = 5;
SELECT * FROM estilosPorPeleador;
DELETE FROM estilosPorPeleador WHERE estilosPorPeleador_id = 18;
SELECT * FROM estilosPorPeleador;

INSERT INTO paises(nombre,dominio) VALUES ("Kosovo","KO");
SELECT * FROM paises;
SELECT * FROM paises WHERE pais_id = 141;
UPDATE paises SET nombre ="Estados Unidos Mexicanos", dominio ="EM" WHERE pais_id = 141;
DELETE FROM paises WHERE pais_id = 247;
SELECT * FROM paises;




