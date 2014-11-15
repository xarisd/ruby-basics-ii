a = Object.new()

# Add a method to this SPECIFIC object ONLY
class Object
  def some_property=(value)
    @a = value
  end
end

b = Object.new()

# This is legitimate now
a.some_property = 1
# and so is this
b.some_property = 2
