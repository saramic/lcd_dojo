class SevenSegment
  zero = <<-EO_NUMBER
  -  
|   |

|   |
  -  
EO_NUMBER

  one = <<-EO_NUMBER

|

|

EO_NUMBER

  two = <<~EO_NUMBER
      - 
        |
      - 
    |   
      - 
  EO_NUMBER

  DIGITS = [zero, one, two]

  def convert(number)
    number = DIGITS[number.to_i]
  end
end
