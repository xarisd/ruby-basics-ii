class Example
  def print_content
    print_protected_state
  end

  def print_other_content_too(other_object)
    print_protected_state
    other_object.print_protected_state
  end

  protected

  def print_protected_state
    print_private_stuff
  end

  private

  def print_private_stuff
  end
end

ex1 = Example.new
ex2 = Example.new
ex1.print_content
ex1.print_other_content_too(ex2)
