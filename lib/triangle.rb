class Triangle
  # write code here
  def initialize(side_one, side_two, side_three)
    @side_one = side_one
    @side_two = side_two
    @side_three = side_three 
  end
  def kind()
    if (@side_1 == 0) || (@side_2 == 0) || (@side_3 == 0)
      raise TriangleError
    elsif @side_one + @side_two <= @side_three || @side_one + @side_three <= @side_two || @side_two + @side_three <= @side_one
      raise TriangleError
    else 
    if @side_one == @side_two && @side_one == @side_three
      :equilateral
    elsif @side_one == @side_two || @side_one == @side_three || @side_two == @side_three
      :isosceles
    elsif @side_one != @side_two && @side_one != @side_three && @side_two != @side_three
      :scalene
      end
    end 
  end


  class TriangleError < StandardError
  
  end 
end 
  