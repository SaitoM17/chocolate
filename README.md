# Análisis de desempeño comercial y optimización de portafolio – Chocolate Retail

Empresa retail global necesita entender desaceleración y desempeño regional para tomar decisiones de catálogo e inventario. El conjunto de datos usado cuenta con la información sobre registros transaccionales detallados de las ventas globales de productos de chocolate desde enero de 2022 hasta agosto de 2024.

---

## 📚 Tabla de Contenidos

- [🎯 Propósito](#-propósito)
- [📦 Conjunto de Datos](#-conjunto-de-datos)
- [🧪 Desarrollo del Proyecto](#-desarrollo-del-proyecto)
- [📌 Vista previa del dashboard](#-vista-previa-del-dashboard)
- [💡 Recomendaciones](#-recomendaciones)
- [📂 Archivos](#-reportes)
- [🛠️ Tecnologías](#️-tecnologías)
- [👤 Autor](#-autor)

---

## 🎯 Propósito

Este análisis busca apoyar decisiones comerciales relacionadas con catálogo, inventario y planificación de ventas por medio de:
* Evaluación del desempeño comercial
* Detectar oportunidades de crecimiento
* Optimizar portafolio

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
![Vista Dashboard](reports/figures/vista1_dashboard.png)

---

## 💡 Recomendaciones

### 1.-Optimización del portafolio por región
Acción:
* Priorizar inventario y visibilidad de SKUs top por región.
* Reducir distribución de SKUs con bajo desempeño local.
* Ajustar promociones según preferencias regionales.

Impacto esperado:
* Mejor rotación.
* Menor costo logístico.
* Incremento de conversión.

### 2.-Racionalización de SKUs de baja rotación
Acción:
* Identificar SKUs consistentemente en bottom 10% por región.
* Evaluar descontinuación parcial o sustitución.
* Reasignar presupuesto a productos líderes.

Impacto esperado:
* Reducción de inventario muerto.
* Mejora margen.
* Simplificación operativa.

### 3.-Análisis de estacionalidad y desaceleración
Acción:
* Modelar estacionalidad mensual.
* Identificar meses críticos por producto y región.
* Diseñar campañas preventivas en periodos débiles.

Impacto esperado:
* Suavizar volatilidad.
* Mejor forecasting.
* Mayor estabilidad de ingresos.

### 4.-Implementación de monitoreo continuo (dashboard operativo)
Acción:

* Definir alertas:
   * Caídas MoM > X%.
   * SKU que entra en bottom performers.
   * Regiones con variación anómala.
   * Periodos sin datos.

Impacto esperado:
* Decisiones más rápidas.
* Menor dependencia de análisis manual.
* Cultura data-driven.

### 5.-Gobernanza y calidad de datos
Acción:
* Validación automática de completitud temporal.
* Pipeline que marque periodos faltantes.
* Documentar supuestos en reportes ejecutivos.
* Explorar imputación o escenarios.

Impacto esperado:
* Métricas confiables.
* Mejor planificación.
* Menos decisiones basadas en datos incompletos.

--

## 📂 Archivos

Reportes: 
   1.-[Informe de exploración y transformación](reports/Informe%20de%20exploracion%20y%20transformacion.docx)
   2.-[Analisis del negocio](reports/Analisis%20del%20negocio.docx)

SQL:
   1.-[Exploración y transformación de datos](sql/exploracion_tranformacion_datos.sql)
   2.-[Analisis exploratorio de datos](sql/analisis_exploratorio_datos.sql)

---

## 🛠️ Tecnologías

- MySQL Workbench 8.0 CE
- Power BI

---

## 👤 Autor

**Said Mariano Sánchez** – *smariano170@gmail.com*  
Este proyecto forma parte de mi portafolio como analista de datos Jr.

---

## 📝 Licencia

Este proyecto está licenciado bajo la **Licencia MIT**. Puedes usarlo, modificarlo y distribuirlo libremente, siempre que menciones al autor original.

---