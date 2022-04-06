#Crear el programa `promedio2.rb` con el método `compara_arrays` que reciba 2 arreglos y calcule el promedio de ambos, devolviendo el mayor de los promedios.

array1 = [1000, 800, 250, 300, 500, 2500]
array2 = [100, 80, 25, 30, 50, 250]
def compara_arrays(arr1, arr2)
  average1 = arr1.sum / arr1.size
  average2 = arr2.sum / arr2.size
  if average1 > average2
    average1
  else
    average2
  end
end

print compara_arrays(array1, array2)