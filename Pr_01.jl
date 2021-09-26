#=
Primer programa escrito en Julia
Sa 25/Sep/21

Calculo de la componente gravitacional vertical debido a una esfera enterrada 
=#

# Constantes 

function Sphere(x, z, a, rho)
    k = 27.9e-3
    aux = (k * rho * a^3 * z) / (x^2 + z^2)^(3/2) 
    return aux
end

n = 20
val = zeros(n)

z = 5
a = 2 
rho = 1

for i = 1:n
    val[i] = Sphere(i, z, a, rho)
end

val = val* 1000
println(val)