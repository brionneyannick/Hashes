h = {"x": 1, "y":2}

h['z'] = 3
print h
puts ''


h[:x] = 5
print h
puts ''


h.delete(:y)
print h
puts ''


h.each do |key, value|
  puts 'yeeah' if key == 'z'
end


h_invertido = h.invert
print h_invertido
