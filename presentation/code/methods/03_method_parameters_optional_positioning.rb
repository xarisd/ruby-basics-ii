def greet_without_tact(first_name, last_name=nil, age)
  full_name = [first_name,last_name].compact.join(" ")
  puts "Hello #{full_name}! So you are #{age} right?"
end

greet_without_tact("John", "Doe", 30)
greet_without_tact("John", 30)
