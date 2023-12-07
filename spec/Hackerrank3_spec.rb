require './December6/Hackerrank3'

describe "jumping_on_clouds" do
  it "It returns the steps to reach safe cloud(0)" do
    expect(jumping_on_clouds([0,1,0,0,0,1,0])).to eql(3)
  end
end
