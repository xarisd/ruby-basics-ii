class Example
  def initialize(content, difficulty)
    # do some initialization here with the params
  end
end

class MediumLevelExample < Example
  def initialize(content)
    super(content, 5)
  end
end

ex2 = MediumLevelExample.new("Inheritance example")
