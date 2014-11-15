def print_product(description, options={})
  puts "#{description}"

  options.each do | option, value |
    puts "#{option}:#{value}"
  end

  puts "-------------------------"
end

print_product("shoes")

print_product("t-shirt", { :size => "M", :color => "Black" } )

# Ruby's syntactic sugar : same as above but more readable
print_product("t-shirt", :size => "M", :color => "Black")

print_product("hat", :color => "White")
