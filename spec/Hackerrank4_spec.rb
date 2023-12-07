require './December6/Hackerrank4'


describe "counting_valleys" do
  #Positive case 1
  it "It counts the number of valley" do
    expect(counting_valleys(8, "UDDDUDUU")).to eql(1)
  end

  #Positive case 2
  it "It counts the number of valley" do
    expect(counting_valleys(8, "UDDDUDUUDDUU")).to eql(1)
  end

  #Positive case 3
  it "It counts the number of valley" do
    expect(counting_valleys(8, "UDDDUDUUUDDDUDUUUDDDUDUUUDDDUDUUUDDDUDUUUDDDUDUU")).to eql(1)
  end

  #Negative case 1
  it "It counts the number of valley" do
    expect(counting_valleys(8, "UDDDUDUU")).to eql(2)
  end

  #Negative case 2
  it "It counts the number of valley" do
    expect(counting_valleys(8, "UDDDUDUUDDUU")).to eql(3)
  end

   #Negative case 3
   it "It counts the number of valley" do
    expect(counting_valleys(8, "UDDDUDUUUDDDUDUUUDDDUDUUUDDDUDUUUDDDUDUUUDDDUDUU")).to eql(4)
  end
end
