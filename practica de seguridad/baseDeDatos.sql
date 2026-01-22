Create DATABASE seguridad;

use seguridad;

create table if not exists usuario(
	idUsuario tinyint PRIMARY key AUTO_INCREMENT,
    nombre varchar(50),
    correo varchar(50) UNIQUE
);

CREATE table if not exists usuarioNomal(
	numeroUsr  tinyint AUTO_INCREMENT,
    idUsuario tinyint,
    tlf varchar(9),
    CONSTRAINT fk_usrNormal FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario) on DELETE CASCADE on UPDATE CASCADE,
    CONSTRAINT pk_usrNormal PRIMARY KEY(numeroUsr,idUsuario)
);

CREATE table if not exists usuarioAdministrador(
	numAdmin tinyint AUTO_INCREMENT,
    idUsuario tinyint,
    puesto varchar(50),
    CONSTRAINT fk_usrAdmin FOREIGN KEY(idUsuario) REFERENCES usuario(idUsuario) on DELETE CASCADE on UPDATE CASCADE,
    CONSTRAINT pk_admin PRIMARY KEY(numAdmin,idUsuario)
);

create table if not exists datosUsuarios(
	idDato int PRIMARY KEY AUTO_INCREMENT,
    idUsuario tinyint,
    dato varchar(200),
    CONSTRAINT fk_dato FOREIGN KEY (idUsuario) REFERENCES usuario(idUsuario) on DELETE CASCADE on UPDATE CASCADE
)