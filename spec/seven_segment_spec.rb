require "seven_segment"

describe "converter" do
  seven_segment = SevenSegment.new

  it "converts 1 to seven segment one" do
    seg = <<-EO_NUMBER.gsub(/^\s{4}/, "")
        
        |
        
        |
        
    EO_NUMBER
    expect(seven_segment.convert("1")).to eq(seg)
  end

  it "converts 2 to seven segment two" do
    seg = <<-EO_NUMBER.gsub(/^\s{6}/, "")
        -  
          |
        -  
      |    
        -  
    EO_NUMBER
    expect(seven_segment.convert("2")).to eq(seg)
  end

  it "converts 8 to seven segment eight" do
    seg = <<~EO_NUMBER
        -  
      |   |
        -  
      |   |
        -  
    EO_NUMBER
    expect(seven_segment.convert("8")).to eq(seg)
  end

  it "converts 22 to seven segment two and two" do
    seg = <<-EO_NUMBER.gsub(/^\s{6}/, "")
        -    -  
          |    |
        -    -  
      |    |    
        -    -  
    EO_NUMBER
    expect(seven_segment.convert("22")).to eq(seg)
  end

  it "converts 81 to seven segment eight and one" do
    seg = <<~EO_NUMBER
        -      
      |   |    |
        -      
      |   |    |
        -      
    EO_NUMBER
    expect(seven_segment.convert("81")).to eq(seg)
  end
end
