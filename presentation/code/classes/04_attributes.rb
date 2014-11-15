class Example
  def content
    @content
  end
  def content=(value)
    @content = value
  end
end

ex1 = Example.new
ex1.content = "Testing..."
puts ex1.content
