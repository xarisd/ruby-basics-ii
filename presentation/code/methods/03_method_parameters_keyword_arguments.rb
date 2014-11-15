def print_product(description, size: "M")

  puts "#{description}"
  puts "Size: #{size}"
  puts "-------------------------"
end

print_product("shoes") # this has 'size'
print_product("t-shirt", :size => "M")

# The following will cause an exception
print_product("t-shirt", :size => "M", :color => "Black")
