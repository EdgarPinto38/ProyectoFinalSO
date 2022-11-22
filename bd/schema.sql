CREATE DATABASE IF NOT EXISTS UFC;
USE UFC;

CREATE TABLE paises(
  pais_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  dominio CHAR(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE categorias(
  categoria_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(25) NOT NULL,
  pesoLimiteSuperior INTEGER UNSIGNED NOT NULL,
  pesoLimiteInferior INTEGER UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE estilosDePelea(
  estilo_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombreDelEstilo VARCHAR(25) NOT NULL,
  origen CHAR(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE peleadores(
  peleador_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  nombre VARCHAR(50) NOT NULL,
  fechaDeNacimiento DATE NOT NULL,
  genero VARCHAR(1) NOT NULL,
  pais_id INTEGER UNSIGNED,
    FOREIGN KEY (pais_id)
    REFERENCES paises(pais_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
  categoria_id INTEGER UNSIGNED,
    FOREIGN KEY (categoria_id)
    REFERENCES categorias(categoria_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE estilosPorPeleador(
  estilosPorPeleador_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  peleador_id INTEGER UNSIGNED, 
    FOREIGN KEY (peleador_id)
    REFERENCES peleadores(peleador_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
  estilo_id INTEGER UNSIGNED, 
    FOREIGN KEY (estilo_id)
    REFERENCES estilosDePelea(estilo_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

CREATE TABLE peleadoresPorPais(
  peleadorPorPais_id INTEGER UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  peleador_id INTEGER UNSIGNED, 
    FOREIGN KEY (peleador_id)
    REFERENCES peleadores(peleador_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE,
   pais_id INTEGER UNSIGNED,
    FOREIGN KEY (pais_id)
    REFERENCES paises(pais_id)
    ON DELETE RESTRICT
    ON UPDATE CASCADE
)ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


