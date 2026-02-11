-- Descripción de los datos
SELECT * FROM chocolatesales;
DESCRIBE chocolatesales;

SELECT 'Sales Person' FROM chocolatesales;

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

-- 3.-Verificaciónde eliminación '$'
SELECT Amount FROM chocolatesales;

--- # Actualizar la columna 'Amount' de TEXT a INT

-- 1.- Cambiar Text a INT
ALTER TABLE chocolatesales
MODIFY COLUMN Amount INT;

-- # Actualizar la columna 'Date' de text a Date 

-- 1.- Dar formato de fecha a la columna 'Date'
UPDATE chocolatesales
SET Date = STR_TO_DATE('%d/%m/%Y')
WHERE Date IS NOT NULL;

ALTER TABLE chocolatesales
MODIFY COLUMN Date DATE;