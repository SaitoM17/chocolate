### KPI's Generales ###

# Ventas totales
SELECT
	SUM(Amount) as VentasTotales
FROM 
	chocolatesales;
    
-- Las ventas totales son $19,791,583

# Total de transacciones
SELECT
	COUNT(`Sales Person`) AS cantidad
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

# Ventas por mes
SELECT
	MONTH(Date) AS Mes,
    SUM(Amount) AS Ventas
FROM
	chocolatesales
GROUP BY
	Mes
ORDER BY
	Mes DESC;

-- Se obtuvieron las ventas por cada mes, con excepción de los meses de septiembre, octubre, noviembre y diciembre, por alguna razon la base de datos
-- no cuenta con estos datos.

# Crecimiento MoM    
WITH tabla1 AS(
	SELECT
		SUM(Amount) AS Ventas,
		MONTH(Date) AS Mes,
		RANK() OVER (ORDER BY MONTH(Date) DESC) AS rango
	FROM
		chocolatesales
	WHERE
		YEAR(Date) = 2024
	GROUP BY
		Mes
)
SELECT
    (SELECT Ventas FROM tabla1 WHERE rango = 1) AS MesActual8,
    (SELECT Ventas FROM tabla1 WHERE rango = 2) AS MesAnterior7,
    ROUND((((SELECT Ventas FROM tabla1 WHERE rango = 1) - (SELECT Ventas FROM tabla1 WHERE rango = 2)) / (SELECT Ventas FROM tabla1 WHERE rango = 2)) * 100,2) AS MoM
FROM 
	tabla1
LIMIT 
	1;

-- Se registro una disminución de -7.94% en el mes de agosto en comparación del mes de julio.

### TOP Productos

# Ventas por productos(Amount - Dolares)
SELECT
	Product,
    SUM(Amount) AS Ventas
FROM
	chocolatesales
GROUP BY
	Product
ORDER BY
	Ventas DESC
LIMIT 
	10;

-- Se obtuvieron los Top 10 productos

# Ventas por productos(Boxes Shipped - Cantidad)
SELECT
	Product,
    SUM(`Boxes Shipped`) AS Cantidad
FROM
	chocolatesales
GROUP BY
	Product
ORDER BY
	Cantidad DESC
LIMIT 
	10; 

-- Se obtuvieron el Top 10 productos más vendidos por cantidad

### Ventas por región

#  Región con más ventas
SELECT
	Country,
    SUM(Amount) AS Ventas
FROM
	chocolatesales
GROUP BY
	Country
ORDER BY
	Ventas DESC
LIMIT
	1;

-- Australia es el país que tiene más ventas con  $3,646,458 por los 3 años(2022,2023 y 2024)

# Región con menos ventas
SELECT
	Country,
    SUM(Amount) AS Ventas
FROM
	chocolatesales
GROUP BY
	Country
ORDER BY
	Ventas ASC
LIMIT
	1;
    
-- New Zealand es el país con menos ventas con $ 3,043,642 por los 3 años(2022,2023 y 2024)

# Productos más vendidos por región
WITH ResumenVentas AS (
    SELECT 
        Country, 
        Product, 
        SUM(Amount) AS Total,
        RANK() OVER (PARTITION BY Country ORDER BY SUM(Amount) DESC) as ranking
    FROM 
		chocolatesales
    GROUP BY 
		Country, 
        Product
)
SELECT 
	ranking, 
    Country, 
    Product, 
    Total
FROM 
	ResumenVentas
WHERE 
	ranking <= 5;

-- Se obtuvieron los top 5 de productos con más ventas de cada país.

# Productos menos vendidos por país
WITH ResumenVentas AS (
    SELECT 
        Country, 
        Product, 
        SUM(Amount) AS Total,
        RANK() OVER (PARTITION BY Country ORDER BY SUM(Amount) ASC) as ranking
    FROM 
		chocolatesales
    GROUP BY 
		Country, 
        Product
)
SELECT 
	ranking, 
    Country, 
    Product, 
    Total
FROM 
	ResumenVentas
WHERE 
	ranking <= 5;

-- Se obtuvieron los top 5 de productos con menos ventas