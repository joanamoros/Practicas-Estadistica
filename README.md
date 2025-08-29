# Ejercicios de estadística en R  

Este repositorio contiene ejercicios prácticos de estadística implementados en **R**, organizados en distintos scripts según el tema. Cada archivo incluye tanto el enunciado como la resolución con las funciones de R correspondientes.  

---

## 1. Variables aleatorias continuas  

**Archivo:** `variables-aleatorias-continuas.R`  

Este script recopila ejercicios resueltos sobre distribuciones de probabilidad (uniforme, normal, exponencial, Poisson, binomial), cálculo de probabilidades y propiedades como esperanza, varianza y desviación típica.  

### Contenido  

1. **Distribución uniforme (0,20)**  
   - Probabilidad de toxicidad a partir de un umbral.  
   - Esperanza, varianza y desviación típica.  

2. **Generación de valores aleatorios con `runif()`**  
   - Uniforme en (0,1).  
   - Uniforme en (100,120).  

3. **Distribución normal estándar (Z ~ N(0,1))**  
   - Probabilidades de intervalos.  
   - Cuantiles con `qnorm()`.  

4. **Distribución exponencial y Poisson**  
   - Vida útil de una bombilla.  
   - Número de fallos en un mes.  

5. **Pesos de soldados (N(65, 8²))**  
   - Probabilidades individuales.  
   - Probabilidad de la media muestral de 2000 soldados.  

6. **Duración de un láser semiconductor (N(7000, 600²))**  
   - Probabilidad de fallo antes de cierto tiempo.  
   - Valor que excede al 95%.  
   - Probabilidad conjunta de 3 láseres funcionando.  

7. **Cheques sin fondos (Binomial → Normal aprox.)**  
   - Probabilidad de más de 125 cheques.  
   - Probabilidad entre 140 y 155 cheques.  

8. **Notas de examen (N(700, 120²))**  
   - Proporción de calificaciones A y B.  
   - Modelización binomial para un grupo de 100 alumnos.  
   - Nota mínima para no suspender al 5% más bajo.  

9. **Rentas familiares (N(30000, 10000²))**  
   - Probabilidad de que la suma de 50 rentas supere 1.500.000 €.  

10. **Defectos en fabricación (Poisson → Normal aprox.)**  
    - Probabilidad exacta y aproximada de superar cierto número de defectos en 150 días.  

11. **Duración de baterías (Exponencial)**  
    - Tiempo informado para garantizar un 90% de supervivencia.  

---

## 2. Inferencia estadística (en desarrollo)  

**Archivo:** `inferencia-estadistica.R`  

Este script contendrá ejercicios sobre:  

- Intervalos de confianza.  
- Pruebas de hipótesis.  
- Comparación de medias y proporciones.  
- Uso de distribuciones muestrales (t de Student, chi-cuadrado, F).  

Actualmente está en construcción y se irá completando progresivamente.  

---

## Funciones de R utilizadas  

- **Distribuciones de probabilidad:**  
  - `pnorm()`, `qnorm()`, `rnorm()` → Normal.  
  - `punif()`, `runif()` → Uniforme.  
  - `pexp()` → Exponencial.  
  - `ppois()`, `pbinom()` → Poisson y Binomial.  

- **Medidas descriptivas:**  
  - Cálculo de esperanza, varianza y desviación típica.  
