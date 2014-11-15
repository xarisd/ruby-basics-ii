num = 0

message = while num <= 10
  num = num + 1
  "I am the line with num '#{num}'"
end

puts num
puts message # this will print "I am the line with num '10'"
