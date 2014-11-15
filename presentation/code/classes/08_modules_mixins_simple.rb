module Logger
  def log(msg)
    $stdout.puts msg
  end
end

class Person
  include Logger
end

class Car
  include Logger
end

p = Person.new
p.log("Hello")

c = Car.new
c.log("Vrrrrrrmmm")
