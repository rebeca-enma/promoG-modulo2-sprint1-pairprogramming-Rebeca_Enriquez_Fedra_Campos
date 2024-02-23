USE tienda_zapatillas ;

ALTER TABLE ZAPATILLAS
ADD COLUMN `marca` VARCHAR(45) NOT NULL ; 

ALTER TABLE ZAPATILLAS
ADD COLUMN `talla` INT NOT NULL ;

ALTER TABLE EMPLEADOS
MODIFY COLUMN `salario` FLOAT ;

ALTER TABLE CLIENTES 
DROP COLUMN pais; 

ALTER TABLE FACTURAS
ADD COLUMN `total` FLOAT ;

INSERT INTO ZAPATILLAS (id_zapatilla, modelo, color, marca, talla) 
VALUES  (1, "XQYUN", "Negro", "Nike", 42),
		( 2, "UOPMN", "Rosas", "Nike", 39),
		( 3, "OPNYT", "Verdes", "Adidas", 35) ; 


INSERT INTO EMPLEADOS (id_empleado, nombre, tienda, salario , fecha_incorporacion)
	VALUES ( 1, "Laura", "Alcobendas", 25.987, "2010-09-03"),
    ( 2, "Maria","Sevilla",NULL , "2001-04-11"),
    ( 3,"Ester","Oviedo", 30165.98, "2000-11-29");
    
    
INSERT INTO FACTURAS (numero_factura, fecha, id_zapatilla, id_empleado, id_cliente, total)
	VALUES (123, "2001-12-11", 1, 2, 1, 54.98),
		   (1234, "2005-05-23", 1, 1, 3, 89.91),
           (12345, "2015-09-18", 2, 3, 3, 76.23);
           
INSERT INTO CLIENTES (nombre, numero_telefono, email, direccion, ciudad, provincia, codigo_postal)
	VALUES ("Monica", 123456789,"monica@email.com", "Calle Felicidad", "Mostoles", "Madrid", 28176),
			("Lorenca", 289345678,"lorena@email.com", "Calle Alegria", "Barcelona", "Barcelona", 12346),
            ("Carmen", 298463759,"carmen@email.com","Calle Color","Vigo","Pontevedra",23456) ;
            
ALTER TABLE FACTURAS AUTO_INCREMENT = 1;            

UPDATE ZAPATILLAS
SET `color` = "amarillas" 
WHERE `color` = "rosas";
           

UPDATE EMPLEADOS
SET `tienda` = "A Coruña" 
WHERE `nombre` = "Laura";

UPDATE CLIENTES
SET `numero_telefono` = 123456728 
WHERE `nombre` = "Monica";

UPDATE FACTURAS
SET `total` = 89.91
WHERE `id_factura` = 2;

