require_relative 'self.rb'

describe Math do
  it "calculates hypotenuse given two numbers" do
    expect(Math.hypot(3,4)).to eq(5)
  end

end