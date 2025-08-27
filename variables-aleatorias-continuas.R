# Ejercicio 1: Supóngase que la concentración que cierto contaminante se encuentra distribuida de manera uniforme en el intervalo de 0 a 20 partes de millón. 
# Si se considera tóxica unaconcentración de 8 o más:
# a) ¿Cuál es la probabilidad de que al tomarse una muestra la concentración de esta sea tóxica?
1 - punif(8,0,20)
## 0.60
# b) Calcula la concentración media y su variabilidad.
## E(x) <- (0+20)/2; E(x)= 10
esperanza.x <- 20/2
esperanza.x
## V(x) <- (20-0)^2 / 12; V(x)= 33.3333
varianza.x <‐ 20^2/12
varianza.x
## DT(x) <- sqrt(V(x)); DT(x)= 5.7735
desvt.x <‐ sqrt(varianza.x)
desvt.x

# Ejercicio 2
# a) Genera 5 valores aleatorios de una distribución Uniforme (0,1).
runif(5,0,1)
## 0.0959086 0.2407708 0.9771325 0.6184997 0.6876506
# b) Genera 5 valores aleatorios de una distribución Uniforme (100,120).
runif(5,100,120)
## 101.1561 111.3913 109.9196 110.4446 119.2132

# Ejercicio 3 - Sea Z ~ N(0, 1): 
# a) Calcula P(1 ≤ Z ≤ 2)
## P (1 ≤ Z ≤ 2) = P(Z ≤ 2) - P(Z < 1) = F(2) - F(1)
pnorm(2,0,1) - pnorm(1,0,1)
## 0.1359051
# b) Calcula P(Z ≥ -0.5)
## P(Z ≥ -0.5) = 1 ‐ P(Z < ‐0.5) = P(Z ≤ 0.5)
## P(Z ≥ -0.5) = P(Z ≤ 0.5)
pnorm(0.5, 0, 1)
## 0.6914625
1 - pnorm(-0.5, 0, 1)
## 0.6914625
# c) Calcula P(Z ≤ -0.24)
pnorm(-0.24, 0, 1)
## 0.4051651
# d) ¿Cuál es el valor que acumula una probabilidad de 0.95?
## P(Z ≤ z) = 0.95
qnorm(0.95,0,1)
## 1.644854

# Ejercicio 4: El tiempo de funcionamiento de una bombilla se distribuye como exponencial con una media de 10 días.
## X: tiempo de funcionamiento de una bombilla. 
## Exp(1/10) 
## E(X) = 10 = 1/lambda
# a) ¿Cuál es la probabilidad de que una bombilla funcione más de 10 días?
## P(X > 10) = 1 - P(X ≤ 10)
1 - pexp(10, 1/10)
## 0.3678794
# b) Suponiendo que cada vez que falla una bombilla se la cambia por una nueva. Y el número de bombillas que fallan 
# se puede modelar mediante una distribución de Poisson, hallar la probabilidad de que haya más de 1 fallo en un mes.
mu <- 30 * 0.1
mu
## 3
# P(X>1) = 1 ‐ P(X ≤ 1)
1 - ppois(1, mu)
## 0.8008517

# Ejercicio 5: Los pesos de 2.000 soldados presentan una distribución normal de media 65 kg y desviación típica 8 kg.
# Calcula la probabilidad de que un soldado elegido al azar pese:
# a) Más de 61 kg.
1 - pnorm(61, 65, 8)
## 0.6914625
# b) Entre 63 y 69 kg.
pnorm(69, 65, 8) - pnorm(63, 65, 8)
## 0.2901688
# c) Menos de 70 kg.
pnorm(70, 65, 8)
## 0.7340145
# d) Más de 75 kg
1 - pnorm(75, 65, 8)
## 0.1056498
# Calcula la probabilidad de que el promedio del peso de los 2.000 soldados esté entre 64 y 65 Kg. 
media.promx <- 65
media.promx
sigma.promx <- 8/sqrt(2000)
sigma.promx
## 0.1788854
## P(64 < media(x) < 65) = F(65) - F(64)
pnorm(65,media.promx,sigma.promx) - pnorm(64,media.promx,sigma.promx) 
## 0.5

Ejercicio 6
La duración de un láser semiconductor a potencia constante tiene una distribución
normal con media 7.000 horas y desviación típica de 600 horas.
a) ¿Cuál es la probabilidad de que el láser falle antes de 5.000 horas?
P(x<5000) = pnorm(5000,7000,600)
## 0.0004290603
b) ¿Cuál es la duración en horas excedida por el 95% de los láseres?
## P(X > x) = 0.95 ¿x?
## 1 - P(X ≤ x) = 0.95
## P(X ≤ x) = 0.05 : 
qnorm(0.05, 7000, 600)
## 6013.088
c) Si se hace uso de tres láseres en un producto y se supone que fallan de manera
independiente ¿Cuál es la probabilidad de que tres sigan funcionando después de
7.000 horas?
# Probabilidad de que un láser dure más de 7000 horas
p_uno_despues_7000h <- 1-pnorm(7000,7000,600)
p_uno_despues_7000h
## 0.5
# Probabilidad de que los tres sigan funcionando
p_tres_despues_7000h <- p_uno_despues_7000h^3
p_tres_despues_7000h
## 0.125

Ejercicio 7
En un banco, la probabilidad de recibir un cheque sin fondos es igual a 0,15. Durante
esta semana se han recibido 1000 cheques, hallar (usa para el cálculo de estas
probabilidades la aproximación de la Binomial a la Normal):
a) Probabilidad de recibir más de 125 cheques sin fondos.
b) La probabilidad de que el número de cheques sin fondos esté entre 140 y 155
(extremos incluidos).
n <- 1000
p <- 0.15
mu <- n*p
sigma <- sqrt(n*p*(1-p))
# a) P(X > 125) -> con corrección de continuidad
p_a <- 1 - pnorm(125 + 0.5,mu,sigma)
p_a
# b) P(140 <= X <= 155) -> con corrección de continuidad
p_b <- pnorm(155 + 0.5,mu,sigma) - pnorm(140 - 0.5,mu,sigma)
p_b

Ejercicio 8
Las notas obtenidas en un examen por un grupo grande de alumnos se distribuyen según
una normal de media 700 y desviación típica 120.
mu <- 700
sigma <- 120
a) Se obtiene A con una nota mayor que 820 ¿qué proporción de estudiantes reciben
A?
p_A <- 1 - pnorm(820, 700, 120)
p_A
b) Se obtiene B con una nota entre 730 y 820. Un profesor tiene un grupo de 100
alumnos, que puede verse como una muestra aleatoria del total de los estudiantes.
b.1 ¿Cuál es la probabilidad de que un alumno obtenga una nota B?
p_B <- pnorm(820, 700, 120) - pnorm(730, 700, 120)
p_B
b.2 ¿Cuál es la probabilidad de que obtengan una nota B, 30 alumnos o menos?
n <- 100
# Binomial
p_30oMenos <- pbinom(30, 100, p_B)
p_30oMenos
b.3 Hallar el número esperado de estudiantes de esta clase que obtendrán una B.
esperados_B <- n * p_B
esperados_B
c) Se decide suspender al 5% de estudiantes con notas más bajas. ¿Cuál es la nota
mínima necesaria para no suspender?
nota_min <- qnorm(0.05, 700, 120)
nota_min




 
