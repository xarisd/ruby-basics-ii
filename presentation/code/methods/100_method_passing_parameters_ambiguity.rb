def get_greet_msg(name)
  "Hello #{name}!"
end

def super_print(header, main_msg)
  puts header.upcase
  puts main_msg
end

puts get_greet_msg "John"    # What ?

puts(get_greet_msg("Haris")) # too many parentheses

puts get_greet_msg("Haris")  # I am the pretiest!
