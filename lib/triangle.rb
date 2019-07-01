require 'pry'
class Triangle
  
    attr_accessor :one, :two, :three
  
  def initialize(one, two, three)
    
        @one = one 
        @two = two
        @three = three

  end

  def kind

      sideone_plus_two = @one + @two
      sideone_plus_three = @one + @three
      sidetwo_plus_three = @two + @three

    if  sideone_plus_two <= @three ||  sideone_plus_three <= @two|| sidetwo_plus_three <= @one
        raise TriangleError
    elsif 
      @one == @two && @one == @three
    :equilateral
    elsif
     @one == @two || @one == @three || @two == @three
      :isosceles
    else
    :scalene
    end
  
  end

  class TriangleError < StandardError

    def message
     puts  "not a triangle"
    end
    
  end


end
