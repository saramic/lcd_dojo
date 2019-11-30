class SevenSegment
  zero = <<-EO_NUMBER
  -  
|   |

|   |
  -  
EO_NUMBER

  one = <<-EO_NUMBER.gsub(/^\s{4}/, "")
        
        |
        
        |
        
  EO_NUMBER

  two = <<-EO_NUMBER.gsub(/^\s{4}/, "")
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
    chars = number.split("")
    output = []
    for line_number in (0..4).to_a
      chars.map do |char|
        output << DIGITS[char.to_i].split("\n")[line_number]
      end
      output << "\n"
    end
    output.join
  end
end
