class Example
  def initialize(content)
    @content = content
  end

  def print_content
    puts "Content : #{@content}"
  end
end

ex1 = Example.new("Testing...")
ex1.print_content
