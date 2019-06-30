class Triangle
  
  attr_accessor :l1, :l2, :l3
  attr_reader :kind

  def initialize(l1, l2, l3)
    @l1 = l1
    @l2 = l2
    @l3 = l3
  end

  def kind
    if @l1 <= 0 || @l2 <= 0 || @l3 <=0
      raise TriangleError
    elsif (@l1 + @l2) <= @l3 || (@l1 + @l3) <= @l2 || (@l2 +@l3) <= @l1
      raise TriangleError
    else
        if @l1 == @l2 && @l2 == @l3
          :equilateral
        elsif @l1 == @l2 || @l1 == @l3 || @l2 ==@l3
          :isosceles
        else
          :scalene
        end
      end
  end

  class TriangleError < StandardError
    puts "THAT IS NOT A TRIANGLE"
  end

end
