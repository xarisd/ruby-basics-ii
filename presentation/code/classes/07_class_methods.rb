class Person
  def say_hello
  end

  # inside class definition using "self.method_name"
  def self.find_by_name(name)
  end

  # inside class definition using "ClassName.method_name"
  def Person.find_by_age(age)
  end
end

# outside class definition using "ClassName.method_name"
def Person.find_by_gender(gender)
end

p1 = Person.new
p1.say_hello

people_named_george = Person.find_by_name("George")
