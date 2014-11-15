class Person
  def say_hello(name)
    puts "Hello #{name}!"
  end
end

class CoolGuy < Person
  def say_hello(name=nil)
    puts "How you doing?"
  end
end

p = Person.new
joe = CoolGuy.new

p.say_hello "Mary"

joe.say_hello
joe.say_hello "Mary"
