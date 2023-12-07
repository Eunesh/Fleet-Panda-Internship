require './December6/Hackerrank2'

describe "repeatedString1" do
  s = "a"
  it "It returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString1(s, 10000)).to eql(10000)
  end

describe "repeatedString2" do
  it "It returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString1(s, 10000)).to eql(10000)
  end
end

end
