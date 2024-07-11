# Ejercicio 1: Supóngase que la concentración que cierto contaminante se encuentra distribuida de manera uniforme en el intervalo de 0 a 20 partes de millón. 
# Si se considera tóxica unaconcentración de 8 o más:
# a) ¿Cuál es la probabilidad de que al tomarse una muestra la concentración de estasea tóxica? [Resultado: 0.60]
1 - punif(8,0,20)
# b) Calcula la concentración media y su variabilidad.
#     E(x) <- (0+20)/2; E(x)= 10
#     V(x) <- (20-0)^2 / 12; V(x)= 33.3333
#     DT(x) <- sqrt(V(x)); DT(x)= 5.7735

# Ejercicio 2
# a) Genera 5 valores aleatorios de una distribución Uniforme (0,1).
runif(5,0,1)
# b) Genera 5 valores aleatorios de una distribución Uniforme (100,120).
runif(5,100,120)

# Ejercicio 3
# a) P (1 <= Z <= 2) = P(Z<=2) - P(Z<1) = F(2) - F(1)
pnorm(2,0,1) - pnorm(1,0,1)


