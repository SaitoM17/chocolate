### KPI's Generales ###

# Ventas totales
SELECT
	SUM(Amount) as VentasTotales
FROM 
	chocolatesales;
    
-- Las ventas totales son $19,791,583

# Total de transacciones
SELECT
	COUNT('Sales Person') AS cantidad
FROM
	chocolatesales;
    
-- Se han registrado 3282 transacciones desde 2022 hasta el 2025

# Ticket promedio
SELECT
	AVG(Amount) AS TicketPromedio
FROM
	chocolatesales;
    
-- El promedio de ticket es de $ 6030.3422 dolares

### Ventas por tiempo

# Ventas por año
SELECT
	YEAR(Date) AS Annio,
    SUM(Amount) AS Ventas
FROM
	chocolatesales
GROUP BY
	Annio;

-- Las ventas por año 
-- 2022 ->	$ 6,183,625
-- 2023 ->	$ 6,643,385
-- 2024 ->	$ 6,964,573