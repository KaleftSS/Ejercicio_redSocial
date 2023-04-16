CREATE TABLE usuario (
    id_usuario INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    biografia VARCHAR (100) NOT NULL,
    genero VARCHAR (10) NOT NULL,
    email VARCHAR (50) NOT NULL
);

CREATE TABLE amigo (
    id_amigo INT (10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR (30) NOT NULL,
    genero VARCHAR (10) NOT NULL,
    biografia VARCHAR (100) NOT NULL,
    email VARCHAR (50) NOT NULL
);

CREATE TABLE usuario_amigo (
      id_usuario_amigo INT(20)PRIMARY KEY NOT NULL AUTO_INCREMENT,
      id_usuario INT(10) NOT NULL,
     id_amigo INT(10) NOT NULL,
      FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE CASCADE,
      FOREIGN KEY (id_amigo) REFERENCES amigo (id_amigo) ON DELETE CASCADE
);

CREATE TABLE comentario(
    id_comentario INT(10)PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_usuario INT,
    fecha VARCHAR (20) NOT NULL,
    texto VARCHAR(2000) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE publicacion (
    id_publicacion INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_usuario INT,
    formato_imagen VARCHAR(20) NOT NULL,
    formato_video VARCHAR(20) NOT NULL,
    numero_reacciones BIGINT(100) NOT NULL,
    FOREIGN KEY (id_usuario) REFERENCES usuario (id_usuario) ON DELETE CASCADE
);

CREATE TABLE comentario_publicacion(
    id_comentario_publicacion INT(10) PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_publicacion INT,
    id_comentario INT,
    FOREIGN KEY (id_publicacion) REFERENCES publicacion (id_publicacion) ON DELETE CASCADE,
      FOREIGN KEY (id_comentario) REFERENCES comentario (id_comentario) ON DELETE CASCADE
);

INSERT INTO usuario (nombre, biografia, genero,  email) VALUES
('Fen',"Hola","Masculino","fen.example.com"),
('Hadd',"Como","Masculino","hadd.example.com"),
('Boli',"Estan?","Femenino","boli.example.com"),
('Mino',"Todos","Femenino","mino.example.com"),
('Tebi',"Aqui?","No binario","tebi.example.com");

INSERT INTO amigo (nombre, genero, biografia, email) VALUES
('kaleft',"Masculino","Hola","kaleft.example.com"),
('Kingstian',"Masculino","Hola","king.example.com"),
('Juandi',"Femenino","Hola","juan.example.com"),
('Nicol',"Femenino","Hola","nicol.example.com"),
('Esteban',"No binario","hola","esteban.example.com");

INSERT INTO usuario_amigo (id_usuario, id_amigo) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);

INSERT INTO comentario (id_usuario, fecha, texto) VALUES
(1, "01/01/2001", "Hola"),
(2, "02/01/2001", "Hola"),
(3, "03/01/2001", "Hola"),
(4, "04/01/2001", "Hola"),
(5, "05/01/2001", "Hola");

INSERT INTO publicacion (id_usuario,formato_imagen,formato_video,numero_reacciones) VALUES
(1,'jpg','mp4',100),
(2,'jpg','mp4',234),
(3,'jpg','mp4',543),
(4,'jpg','mp4',430),
(5,'jpg','mp4',95);

INSERT INTO comentario_publicacion (id_publicacion,id_comentario) VALUES
(1,1),
(2,1),
(3,2),
(4,1),
(5,1);

UPDATE amigo SET genero = 'Femeninos' WHERE id_amigo = 1;
UPDATE amigo SET genero = 'Femeninos' WHERE id_amigo = 2;
UPDATE amigo SET genero = 'Femeninos' WHERE id_amigo = 3;
UPDATE amigo SET genero = 'Femeninos' WHERE id_amigo = 4;
UPDATE amigo SET genero = 'Femeninos' WHERE id_amigo = 5;

DELETE FROM comentario WHERE id_comentario = 1;
DELETE FROM comentario WHERE id_comentario = 2;
DELETE FROM comentario WHERE id_comentario = 3;
DELETE FROM comentario WHERE id_comentario = 4;
DELETE FROM comentario WHERE id_comentario = 5;




