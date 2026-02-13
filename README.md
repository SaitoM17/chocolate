# 📊 Chocolate
# Analisis sobre la venta del Chcocolate

Este proyecto realiza un análisis sobre las ventas del chocolate a nivel global. El conjunto de datos incluye información sobre registros transaccionales detallados de las ventas globales de productos de chocolate desde julio de 2022 hasta diciembre de 2025.

---

## 📚 Tabla de Contenidos

- [🎯 Propósito](#-propósito)
- [📦 Conjunto de Datos](#-conjunto-de-datos)
- [🧪 Desarrollo del Proyecto](#-desarrollo-del-proyecto)
- [📌 Vista previa del dashboard](#-vista-previa-del-dashboard)
- [💡 Insights claves](#-insights-claves)
- [🛠️ Tecnologías](#️-tecnologías)
- [⚙️ Instalación](#️-instalación)
- [👤 Autor](#-autor)

---

## 🎯 Propósito

El objetivo de este proyecto es determinar las ventas globales del chocolate, con el fin de responder a las siguientes preguntas:
* ¿Cómo están las ventas?
* ¿Estamos creciendo?
* ¿Qué productos impulsan el negocio?
* ¿Dónde hay oportunidad?

Obtener métricas bases:
* KPI General
   - Ventas totales
   - Total transacciones
   - Ticket promedio

* Ventas por mes
   - Año
   - Mes
   - Crecimiento MoM

* Top productos
   - Ventas por producto

* Ventas por región
   - Region con la mayor ventas
   - Region con la menor ventas
   - Producto más vendido por región
   - Producto menos vendido por región

---

## 📦 Conjunto de Datos

El conjunto de datos utilizado contiene las siguientes columnas:

- `Sales Person`: El nombre del vendedor responsable de la venta.
- `Country`: El país donde se realizo la venta.
- `Product`: El nombre y tipo del producto vendido.
- `Date`: Fecha en que se produjo la transacción de ventas(formato DD/MM/AAAA).
- `Amount`: El monto total de ventas de la transacción, expresado en dólares estadounidenses.
- `Boxes Shipped`: El número de cajas de productos enviadas como parte de la transacción.

Fuente: [Chocolate Sales](https://www.kaggle.com/datasets/saidaminsaidaxmadov/chocolate-sales).

---

## 🧪 Desarrollo del Proyecto

### **Exploración inicial de los datos - Limpieza y preprocesamiento**
En la exploración inicial de de los datos de encotnraron con inconsistencias en los campos `Date` y `Amount`.

En el campo `Amount` se encontraron que los registros contenían los caracteres de **$**, **,** y adicional el campo contaba con el formato de **TEXT** dichas incosistencias fueron tratadas eliminando los caracteres y realizando una transformación del campo.

```sql
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
```

En el campo `Date` tenia el formato de **TEXT** lo que representaba un problema para futuros analisis en los que se llegara a requerir operaciones con fechas, debido a esto se realizo un proceso de transformación.

```sql
-- # Actualizar la columna 'Date' de text a Date 

-- 1.- Dar formato de fecha a la columna 'Date'
UPDATE chocolatesales
SET Date = STR_TO_DATE(Date, '%d/%m/%Y')
WHERE Date IS NOT NULL;

ALTER TABLE chocolatesales
MODIFY COLUMN Date DATE;

-- 2.-Verificación de modificación de tabla Date
SELECT Date FROM chocolatesales;
```

Por último se verificó la calidad de los datos en búsqueda de valores nulos y duplicados, en dicha búsqueda no se encontró ningún problema.

```sql
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
SELECT `Sales Person`, Country, Product, Date, Amount, COUNT(*) as repeticiones
FROM chocolatesales
GROUP BY `Sales Person`, Country, Product, Date, Amount
HAVING COUNT(*) > 1;
```

2. **Limpieza y preprocesamiento**:
   - Manejo de valores nulos, duplicados, formatos y conversiones de fechas.

3. **Análisis exploratorio de datos (EDA)**:
   - [Ej. Distribución, correlaciones, agrupaciones, etc.]

4. **Visualización de datos**:
   - Uso de gráficos de barras, líneas, cajas, dispersión y mapas de calor.

5. **Modelado o reportes (opcional)**:
   - [Si aplica: modelos de ML, clustering, predicciones, etc.]

6. **Conclusiones y recomendaciones**:
   - Síntesis de hallazgos clave y propuestas de acción.

---

## 📌 Vista previa del dashboard

---

## 💡 Insights claves

- [Insight 1]
- [Insight 2]
- [Recomendación práctica o estratégica basada en los datos]

---

## 🛠️ Tecnologías

- Python
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook / Google Colab
- [Otras herramientas que uses, como Scikit-learn, Plotly, etc.]

---

## ⚙️ Instalación

### 1. Clonar este repositorio:
```bash
git clone https://github.com/tu_usuario/nombre_del_proyecto.git
```
### 2. Uso de un Entorno Virtual para Aislar Dependencias

Para evitar conflictos con versiones de librerías, se recomienda usar entornos virtuales.

####  Crear y Activar un Entorno Virtual

##### Crear el entorno virtual:
```
python -m venv venv
```
##### Activar el entorno:
* #### En Windows:

    ```
    venv\Scripts\activate
    ```

* #### En Mac/Linux::

    ```
    source venv/bin/activate
    ```
#### 3. Instalar dependencias dentro del entorno:
* #### Opición 1:
    ```
    pip install -r requirements.txt
    ```

* #### Opción 2 (De forma manual):
    ```
    pip install numpy pandas matplotlib seaborn scikit-learn
    ```

---

## 👤 Autor

**Said Mariano Sánchez** – *smariano170@gmail.com*  
Este proyecto forma parte de mi portafolio como analista de datos Jr.

---

## 📝 Licencia

Este proyecto está licenciado bajo la **Licencia MIT**. Puedes usarlo, modificarlo y distribuirlo libremente, siempre que menciones al autor original.

---