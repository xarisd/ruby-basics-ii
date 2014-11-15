class Example
  def initialize(content, difficulty=4, options={})
    # do some initialization here with the params
  end
end

class SuperchargedExample < Example
  def initialize(content, difficulty=5, options={})
    # do more stuff before
    super
    # do more stuff after
  end
end

ex1 = SuperchargedExample.new("Mixin example", 8)
ex2 = SuperchargedExample.new("Method example") # difficulty = 5
