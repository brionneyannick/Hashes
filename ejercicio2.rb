productos = {'bebida' => 850, 'chocolate' => 1200, 'galletas' => 900, 'leche' =>
750}

productos.each do |producto, valor|
  puts producto
end

productos['cereal'] = 2200
print productos
puts ''

productos['bebida'] = 2000
print productos
puts ''

array_productos = productos.to_a
print array_productos
puts ''

productos.delete('galletas')
print productos
