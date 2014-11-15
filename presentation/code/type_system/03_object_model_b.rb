a = Object.new()

# Add a method to this SPECIFIC object ONLY
def a.some_property=(value)
  @a = value
end

# This is legitimate now
a.some_property = 1
