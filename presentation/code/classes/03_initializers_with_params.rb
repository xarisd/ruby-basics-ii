class Example

  def initialize(content, difficulty=5, options={})
    # do some initialization here with the params
  end

end

ex1 = Example.new("Method example")
ex2 = Example.new("Mixin example", 8)
ex3 = Example.new("Metaprogramming example", 7, :excitement => 'Hi')
