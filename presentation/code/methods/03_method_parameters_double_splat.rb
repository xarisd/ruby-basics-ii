def print_product(description, size: "M", **options)

  puts "#{description}"
  puts "Size: #{size}"

  options.each do | option, value |
    puts "#{option}:#{value}"
  end

  puts "-------------------------"
end

print_product("shoes") # this has 'size'
print_product("t-shirt", :size => "M")
print_product("t-shirt", :size => "M", :color => "Black")
