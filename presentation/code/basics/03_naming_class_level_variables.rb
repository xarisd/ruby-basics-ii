class Person
  @@count = 1 # @@count is a class variable

  def initialize(the_name)
    @name = the_name # @name is instance variable
    @@count = @@count + 1
  end

  def name
    @name
  end
end
