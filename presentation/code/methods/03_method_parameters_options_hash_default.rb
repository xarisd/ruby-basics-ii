def print_product(description, options={})

  default_options = { :size => "M" }
  final_options = default_options.merge(options)

  puts "#{description}"

  final_options.each do | option, value |
    puts "#{option}:#{value}"
  end

  puts "-------------------------"
end

print_product("shoes") # this has 'size'
print_product("t-shirt", :size => "M", :color => "Black")
