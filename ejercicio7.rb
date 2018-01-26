inventario = {"Notebooks": 4, "PC Escritorio": 6, "Routers": 10, "Impresoras": 6}

opcion = 0

until opcion == 7 do
  puts '***Presiona el número que corresponde a la opción deseada***'
  puts '1)Agregar'
  puts '2)Eliminar'
  puts '3)Actualizar'
  puts '4)Ver Stock Total'
  puts '5)Mayor Existencia'
  puts '6)Consulta si existe'
  puts '7)Salir'

  opcion = gets.chomp.to_i

  case opcion

    when 1
      puts 'Ingresa Ítem y Stock separado por una coma(,).'
      nuevo_item = gets.chomp
      nuevo_item = nuevo_item.split(",")
      inventario[nuevo_item.first.to_sym] = nuevo_item.last.delete(' ').to_i

    when 2
      print "*******************\n"
      puts 'Productos en Stock:'
      print "*******************\n"
      puts inventario.keys
      print "***************************************\n"
      puts 'Ingresa textualmente, el ítem a eliminar:'
      print "***************************************\n"
      eliminar = gets.chomp.to_sym
      if inventario.keys.include?(eliminar)
        inventario.delete(eliminar)
        puts "Ítem #{eliminar} Borrado!!!"
        puts '****************************'
        puts ''
      else
        puts '******************'
        puts "Ítem no encontrado"
        puts '******************'
      end

    when 3
      print "*******************\n"
      puts 'Productos en Stock:'
      print "*******************\n"
      puts inventario.keys
      print "******************************************\n"
      puts 'Ingresa textualemente, el Ítem a Actualizar:'
      print "******************************************\n"
      actualizar = gets.chomp.to_sym
      if inventario.keys.include?(actualizar)
        puts 'Ingrese nuevo Stock'
        new_price = gets.chomp.delete(' ').to_i
        inventario[actualizar] = new_price
        puts "Ítem #{actualizar} Actualizado!!!"
        puts '******************************'
        puts ''
      else
        puts '******************'
        puts "Ítem no encontrado"
        puts '******************'
      end

    when 4
      inv_total = 0
      inventario.values.each do |i|
        inv_total += i
      end
      print "***************************************\n"
      puts "El inventario total es de #{inv_total} productos"
      print "***************************************\n"

    when 5
      mayor_stock = 0
      inventario.values.each do |i|
        mayor_stock = i if i > mayor_stock
      end
      print "*****************************************************************\n"
      puts "El producto con mayor inventario es #{inventario.invert[mayor_stock]} con #{mayor_stock} productos"
      print "*****************************************************************\n"

    when 6
      print "*************************************************\n"
      puts 'Ingresa textualmente, el Ítem para saber si existe'
      print "*************************************************\n"
      existe = gets.chomp.to_sym
      if inventario.keys.include?(existe)
        puts '********************'
        puts "#{existe} SI existe!"
        puts '********************'
      else
        puts '********************'
        puts "#{existe} NO existe!"
        puts '********************'
      end

    when 7
      puts 'Hasta Pronto!!!'

    else
      puts 'Opción Inválida'
  end

end

puts inventario
