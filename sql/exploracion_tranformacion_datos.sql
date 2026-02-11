-- Descripción de los datos
SELECT * FROM chocolatesales;
DESCRIBE chocolatesales;

-- # Actualizar le tipo de datos de columnas 'Date' y 'Amount'

-- Columna Amount

-- 1.-Exploraciónde columna 'Amount'
SELECT Amount FROM chocolatesales;

-- 2.-Eliminar caracteres  '$' y ',' de la columna Amount
UPDATE chocolatesales
SET Amount = REPLACE(Amount, '$','')
WHERE Amount LIKE '%$%';

UPDATE chocolatesales
SET Amount = REPLACE(Amount, ',','')
WHERE Amount LIKE '%,%';

-- Eliminación de espacio en blanco
UPDATE chocolatesales
SET Amount = TRIM(Amount);

-- 3.-Verificación de eliminación '$' y ','
SELECT Amount FROM chocolatesales;

--- # Actualizar la columna 'Amount' de TEXT a INT

-- 1.- Cambiar Text a INT
ALTER TABLE chocolatesales
MODIFY COLUMN Amount INT;

-- # Actualizar la columna 'Date' de text a Date 

-- 1.- Dar formato de fecha a la columna 'Date'
UPDATE chocolatesales
SET Date = STR_TO_DATE(Date, '%d/%m/%Y')
WHERE Date IS NOT NULL;

ALTER TABLE chocolatesales
MODIFY COLUMN Date DATE;

-- 2.-Verificación de modificación de tabla Date
SELECT Date FROM chocolatesales;

-- # Verificación de la calidad de los datos

-- 1.-Verificar si hay valores nulos
SELECT 
	SUM(CASE WHEN 'Sales Person' IS NULL THEN 1 ELSE 0 END) AS SalesPerson,
	SUM(CASE WHEN Country IS NULL THEN 1 ELSE 0 END) AS Country,
	SUM(CASE WHEN Product IS NULL THEN 1 ELSE 0 END) AS Product,
	SUM(CASE WHEN Date IS NULL THEN 1 ELSE 0 END ) AS Date,
	sum(CASE WHEN Amount IS NULL THEN 1 ELSE 0 END) AS Amount,
	SUM(CASE WHEN 'Boxes Shipped' IS NULL THEN 1 ELSE 0 END) AS BoxesShipped
FROM
	chocolatesales;

-- 2.-Verificar si hay valores duplicados