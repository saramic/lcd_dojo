require "seven_segment"

describe "converter" do
  it "converts 1 to seven segment one" do
    seven_segment = SevenSegment.new
    expect(seven_segment.convert(1)).to eq("|\n|")
  end
end
