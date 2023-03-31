class Triangle
  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind()
    raise TriangleError unless valid_sides? && valid_triangle?

    if s1 == s2 && s2 == s3
      :equilateral
    elsif s1 == s2 || s2 == s3 || s3 == s1
      :isosceles
    else
      :scalene
    end
  end

  def valid_sides?
    s1 > 0 && s2 > 0 && s3 > 0
  end

  def valid_triangle?
    s1 + s2 > s3 && s2 + s3 > s1 && s3 + s1 > s2
  end
  

    class TriangleError < StandardError
      def message
        "You must input a valid triangle!"
      end
   end
   

end
