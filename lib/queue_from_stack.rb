require_relative './stack'

# your code here

class MyQueue

  def initialize
    @s1 = Stack.new
    @s2 = Stack.new
  end

  def add(value)
    @s1.push(value)
  end

  def remove
    from_s2
    from_s1
    @s2.pop
  end

  def peek
    from_s2
    from_s1
    @s2.peek
  end

  def from_s1
    while !@s1.empty?
      @s2.push(@s1.pop)
    end
  end

  def from_s2
    while !@s2.empty?
      @s1.push(@s2.pop)
    end
  end

end