def do_this_with_debug_message
  puts "I am starting to do what you told me..."
  yield
  puts "Done!"
end

do_this_with_debug_message { puts "Hi George!" }

do_this_with_debug_message do
  puts "Hi Maria!"
  puts "Hi Nikos!"
end
