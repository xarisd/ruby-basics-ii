num = 0

while num <= 10
  num = num + 1
  next if num == 6
  break if num == 9
  puts num
end

puts "Final value : #{num}"
