class Example
  attr_accessor :content , :difficulty, :color
  attr_reader :read_only_property
  attr_writer :write_only_property

  def initialize(param)
    @read_only_property = param
  end
end

ex1 = Example.new("Some value")
ex1.content = "Testing..."
puts "Content: #{ex1.content}, Difficulty: #{ex1.difficulty} "
puts ex1.read_only_property
