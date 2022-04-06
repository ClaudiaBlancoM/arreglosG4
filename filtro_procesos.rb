#Se necesita crear un programa llamado `filtro_procesos.rb` que lea un archivo que tiene datos por línea. Estos datos representan la cantidad de milisegundos que demoran en terminar algunos procesos del sistema operativo.
# Se necesita un programa que pueda leer un archivo de las mismas características y generar un archivo llamado `procesos_filtrados.data` donde todos los valores sean mayor a un número.
# utilizar al carcar el programa filtro_procesos.rb 250
# Debe generar el archivo procesos_filtrados.data en el mismo directorio de trabajo con:
# 299
# 312
# 412

def data_filter(file = 'procesos.data', filter)
  # abrir y leer archivo de datos
  data = open(file).readlines # array donde cada elemento es una linea del archivo
  # transformarlo a numero para comparar
  filter = filter.to_i
  data = data.map do |element|
    element.to_i
  end
  # los valores deben ser mayores a filter para ser seleccionados
  filtered_array = data.select do |element|
    element > filter
  end
  # crear un archivo procesos_filtrados.data
  File.write('procesos_filtrados.data', filtered_array.join("\n"))
end

data_filter(ARGV[0])