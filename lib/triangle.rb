class Triangle
  attr_reader :side1, :side2, :side3
  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  class TriangleError < StandardError
  end

  def kind
    real_triangle
    if side1 == side2 and side2 == side3
      return :equilateral
    elsif side1 == side2 or side2 == side3 or side1 == side3
      return :isosceles
    else
      return :scalene
    end
  end

  def real_triangle
    real = [(side1 + side2 > side3), (side2 + side3 > side1), (side1 + side3 > side2)]
    real.each {|value| if value == false then raise TriangleError end}
  end

end