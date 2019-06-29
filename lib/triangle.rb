require 'pry'
class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    all_sides = [self.side1, self.side2, self.side3]
    if (all_sides.max >= all_sides.sum - all_sides.max) || all_sides.find{|side| side <= 0.0}
      raise TriangleError
      puts error.message
    elsif self.side1 == self.side2 && self.side2 == self.side3
      :equilateral
    elsif self.side1 == self.side2 || self.side2 == self.side3 || self.side3 == self.side1
      :isosceles
    else
      :scalene
    end
  end
  class TriangleError < StandardError
    def message
      "The side lengths passed as arguments to Triangle.new() cannot make a valid triangle."
    end
  end
end
