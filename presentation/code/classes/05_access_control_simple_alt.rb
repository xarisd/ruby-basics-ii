class Example
  def print_content
  end

  def something_protected
  end

  def private_stuff
  end

  def more_private_stuff
  end

  protected :something_protected
  private :private_stuff, :more_private_stuff
end

ex1 = Example.new
ex1.print_content
