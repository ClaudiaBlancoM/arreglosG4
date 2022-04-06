#Un smartwatch muy inteligente cuenta la cantidad de pasos diarios que da una persona, pero en algunos casos genera información errónea. Se pide crear un método llamado `clear_steps` que reciba un arreglo y descarte todos los valores que no sean números o sean menores a 200 o mayor a 100000. Los valores deben quedar como enteros (Integers). El método debe retornar el arreglo filtrado. El programa debe llamarse `smartwatch1.rb`.

pasos = ['100', '21', '231as', '2031', '1052000', '213b', 'b123']

def clear_steps(arr)
  #descartar los que no son numeros
  valid_steps = arr.select do |step|
    step != /[\D]/.match(step)

  end
  valid_steps_to_i = valid_steps.map do |step|
    step.to_i
  end
  #descartar menores a 200 o mayores a 100000
  valid_steps_to_i.select do |step|
    step >=200 && step <= 100000
  end
  #deben ser numeros los valores
  #devolver arreglo filtrado
end
print clear_steps(pasos)