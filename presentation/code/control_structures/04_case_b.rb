a = 10

case a
when 12
  puts "Found it! #{a} == 12"
when 1..11
  puts "Found it! #{a} < 11"
else
  puts "Booooo"
end
