class Rectangle
  def initialize(length, breadth)
    @length = length
    @breadth = breadth
  end

  def perimeter
    2 * (@length + @breadth)
  end

  def area
    (@length * @breadth)
  end
end


print "please enter length: "
given_length = gets.chomp.to_i

print "please enter breadth: "
given_breadth = gets.chomp.to_i

rectanle_area = Rectangle.new(given_length, given_breadth)                      
  puts rectanle_area.area
  puts rectanle_area.perimeter
