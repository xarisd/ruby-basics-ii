def greet(first_person, *rest)
  puts "Hello #{first_person}"
  rest.each do | person |
    puts "Hello #{person}!"
  end
end

greet "John"
greet "John", "George"
greet "John", "George", "Mary"
