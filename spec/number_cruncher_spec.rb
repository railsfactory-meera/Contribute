RSpec.describe NumberCruncher do
  # it "has a version number" do
  #   expect(NumberCruncher::VERSION).not_to be nil
  # end

  it "Sum of Numbers" do
    expect(NumberCruncher.crunch('1,2')).to eql(3)
  end

  it "Empty String" do
    expect(NumberCruncher.crunch('')).to eql(0)
  end

  it "String with escape sequence" do
    expect(NumberCruncher.crunch('2\n4')).to eql(6)
  end

  it "String with asterisk" do
    expect(NumberCruncher.crunch('5****7')).to eql(12)
  end

  it "String with negative values" do
    expect{NumberCruncher.crunch('-1,100')}.to raise_error(RuntimeError)
  end
end
