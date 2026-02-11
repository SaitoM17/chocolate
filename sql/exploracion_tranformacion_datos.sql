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