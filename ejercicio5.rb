meses = ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo']
ventas = [2000, 3000, 1000, 5000, 4000]

mes_y_ventas = meses.zip(ventas).to_h
ventas_y_mes = mes_y_ventas.invert
print ventas_y_mes


def mejor_mes(variable_interna)
  mas_alto = 0
  variable_interna.each do |monto, mes|
    mas_alto = monto if monto > mas_alto
  end
  mas_alto
end
puts ventas_y_mes[mejor_mes(ventas_y_mes)]
