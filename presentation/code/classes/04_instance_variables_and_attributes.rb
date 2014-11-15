class Example
  def initialize(content, difficulty)
    @content = content
    @difficulty = difficulty
  end

  def content
    @content
  end

  def difficulty
    @difficulty
  end
end

ex1 = Example.new("Inheritance example" ,6)
puts ex1.content
puts ex1.difficulty
