# Crear el programa `visitas.rb` que dada la información de visitas diarias a un sitio web pueda entregar cierta información.
# Se pide: Crear un método llamado promedio que devuelva la cantidad promedio de visitas en el arreglo.

visitas = [1000, 800, 250, 300, 500, 2500]
def promedio(arr)
  arr.inject(0) { |sum, e| sum + e } / arr.size  
end
print promedio(visitas)
