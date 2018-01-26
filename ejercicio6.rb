restaurant_la_playa = {
  'Fosforera' => 11000,
  'Paella' => 2000,
  'Salpicon' => 83000,
  'Cazuela_de_Mariscos' => 4000,
  'Merluza_Frita' => 150000,
  'Filet_a_las_finas_Hierbas' => 6000,
  'Calamares_Rebozados' => 7000,
  'Ceviche'  => 8000
}

mas_costoso = 0
restaurant_la_playa.each do |plato, monto|
  mas_costoso = monto if monto > mas_costoso
end
puts restaurant_la_playa.invert[mas_costoso]

menos_costoso = mas_costoso
restaurant_la_playa.each do |plato, monto|
  menos_costoso = monto if monto < menos_costoso
end
puts restaurant_la_playa.invert[menos_costoso]

promedio = restaurant_la_playa.inject(0) do |acumulador, (llave, valor)|
  acumulador + valor.to_f / restaurant_la_playa.length
end
puts promedio

platos = []
precios = []
restaurant_la_playa.each do |plato, costo|
    platos.push(plato)
    precios.push(costo)
end

print platos
puts ''
print precios
puts ''

restaurant_la_playa.update(restaurant_la_playa) do |plato, valor|
  valor * 1.119
end
print restaurant_la_playa
puts ''

restaurant_la_playa.update(restaurant_la_playa) do |plato, valor|
  if plato.include?('_')
    valor-(valor*20/100)
  else
    valor
  end
end
print restaurant_la_playa
