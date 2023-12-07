require './December6/Hackerrank2'

# For repeatedString1 Method
describe "repeatedString1" do
  s = "a"
  s1 = "aba"
  #Positive Case1
  it "It returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString1(s, 10000)).to eql(10000)
  end

  #Positive Case2
  it "Returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString1(s1, 10)).to eql(7)
  end

  #Negative Case 1
  it "It returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString1(s, 10000)).to eql(100000)
  end

  #Negative Case 2
  it "It returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString1(s1, 10)).to eql(8)
  end


  ## For repeatedString2 Method
describe "repeatedString2" do
  #Positive Case 1
  it "It returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString2(s, 10000)).to eql(10000)
  end


  #Positive Case2
  it "Returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString2(s1, 10)).to eql(7)
  end

  #Negative Case 1
  it "It returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString2(s, 10000)).to eql(100000)
  end

  #Negative Case 2
  it "It returns the number of occurrences 'a'  present into given substring upto given number" do
    expect(repeatedString2(s1, 10)).to eql(8)
  end
end

end
