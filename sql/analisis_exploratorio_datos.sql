### Ventas totales
SELECT
	SUM(Amount) as VentasTotales
FROM 
	chocolatesales;
    
-- Las ventas totales son $19,791,583

### Total de transacciones
SELECT
	COUNT('Sales Person') AS cantidad
FROM
	chocolatesales;
    
-- Se han registrado 3282 transacciones desde 2022 hasta el 2025