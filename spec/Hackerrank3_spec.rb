require './December6/Hackerrank3'

describe "jumping_on_clouds" do
  #Positive case 1
  it "It returns the steps to reach safe cloud(0)" do
    expect(jumping_on_clouds([0,1,0,0,0,1,0])).to eql(3)
  end

  #Positive case 2
  it "It returns the steps to reach safe cloud(0)" do
    expect(jumping_on_clouds([0,1,0,0,0,1,0,1,0,1,0])).to eql(5)
  end

   #Negative case 1
   it "It returns the steps to reach safe cloud(0)" do
    expect{jumping_on_clouds(false)}.to raise_error
  end


  #Negative case 2
  it "It returns the steps to reach safe cloud(0)" do
    expect(jumping_on_clouds([0,1,0,0,0,1,0,1,0,1,0])).to raise_error
  end
end
