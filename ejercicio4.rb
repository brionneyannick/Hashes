personas = ["Carolina", "Alejandro", "Maria Jesús", "Valentín"]
edades = [32, 28, 41, 19]

hash = personas.zip(edades).to_h
print hash
puts ''


def met_promedio(hash_met)
  promedio = hash_met.inject(0) do |acum, (llave, valor)|
    acum + valor
  end
  promedio.to_f / hash_met.length
end
puts "El promedio de los #{hash.length} alumnos es: #{met_promedio(hash)}"
