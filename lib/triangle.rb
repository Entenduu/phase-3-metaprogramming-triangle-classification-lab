class Triangle
  def initialize(a, b, c)
    @sides=[a,b,c].sort
    
  end

  def kind
    if @sides.any? {|side| side <= 0} || @sides[0] + @sides[1] <= @sides[2]
      raise TriangleError
    else 
      case @sides.uniq.size
      when 1 then :equilateral
      when 2 then :isosceles
      else :scalene
      end
    end

  end

  class TriangleError < StandardError
    
  end

end