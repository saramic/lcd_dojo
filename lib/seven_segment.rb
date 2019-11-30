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

  three = four = five = six = seven = nine = nil

  eight = <<~EO_NUMBER
      -  
    |   |
      -  
    |   |
      -  
  EO_NUMBER

  DIGITS = [zero, one, two, three, four, five, six, seven, eight, nine]

  def convert(number)
    number = DIGITS[number.to_i]
  end
end
