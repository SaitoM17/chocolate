# 📊 Chocolate
# Analisis sobre la venta del Chcocolate

Este proyecto realiza un análisis sobre las ventas del chocolate a nivel global. El conjunto de datos incluye información sobre registros transaccionales detallados de las ventas globales de productos de chocolate desde enero de 2022 hasta agosto de 2024.

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
Se identificaron inconsistencias en los campos Date y Amount.
Se realizó normalización de formatos, conversión de tipos y validación de calidad de datos (nulos y duplicados).

### **Análisis exploratorio de datos (EDA)**
* El negocio muestra desaceleración reciente pese al crecimiento histórico.
* El portafolio presenta baja dependencia de productos individuales.
* Existen diferencias regionales que sugieren oportunidades de optimización del catálogo.
* Se detectaron vacíos de datos que afectan la lectura del desempeño real.

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