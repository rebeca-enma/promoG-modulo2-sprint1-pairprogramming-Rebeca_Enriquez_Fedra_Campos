 CREATE SCHEMA `tienda_zapatillas`;
 USE `tienda_zapatillas`;
 
 
 CREATE TABLE `ZAPATILLAS` (
	`id_zapatilla` INT NOT NULL AUTO_INCREMENT,
    `modelo` VARCHAR(45) NOT NULL,
    `color` VARCHAR(45) NOT NULL,
		PRIMARY KEY (`id_zapatilla`)	
    );
    
    
CREATE TABLE `CLIENTES` (
	`id_cliente` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(45) NOT NULL,
    `numero_telefono` INT NOT NULL,
    `email` VARCHAR(45) NOT NULL,
    `direccion` VARCHAR(45) NOT NULL,
    `ciudad` VARCHAR(45),
    `provincia` VARCHAR(45) NOT NULL,
    `pais` VARCHAR(45) NOT NULL,
    `codigo_postal` VARCHAR(45) NOT NULL,
	    PRIMARY KEY (`id_cliente`)
	);
    
CREATE TABLE `EMPLEADOS` (
	`id_empleado` INT NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(45) NOT NULL,
    `tienda` VARCHAR(45) NOT NULL,
    `salario` INT,
    `fecha_incorporacion` DATE NOT NULL,
		PRIMARY KEY (`id_empleado`)
        );
        
CREATE TABLE `FACTURAS` (

	`id_factura` INT NOT NULL AUTO_INCREMENT,
    `numero_factura` VARCHAR(45) NOT NULL,
    `fecha` DATE NOT NULL,
    `id_zapatilla` INT NOT NULL,
    `id_empleado` INT NOT NULL,
    `id_cliente` INT NOT NULL,
		PRIMARY KEY (`id_factura`),
    
    CONSTRAINT `referencia_PK_zapatillas`
		FOREIGN KEY (`id_zapatilla`)  REFERENCES `ZAPATILLAS` (`id_zapatilla`),
	
    CONSTRAINT `referencia_PK_empleado`
		FOREIGN KEY (`id_empleado`)  REFERENCES `EMPLEADOS` (`id_empleado`),
        
	CONSTRAINT `referencia_PK_cliente`
		FOREIGN KEY (`id_cliente`)  REFERENCES `CLIENTES` (`id_cliente`)
	);
    
