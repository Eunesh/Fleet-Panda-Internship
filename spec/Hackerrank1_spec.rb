require './December6/Hackerrank1' #importing Hackerrank1.rb file

describe "sockMerchant" do     # use Double quotes for accesing method
arr = [1,0,1,0,9,2,1,2]
arr2 = [5,6,7,8,9,5,6,7,8,9,10,12,13,14,12]
  #Positive Case1
    it "It returns the number of pair in Array" do
      expect(sockMerchant(arr)).to eql(3)
    end
  #Positive Case2
  it "It returns the number of pair in Array" do
    expect(sockMerchant(arr2)).to eql(6)
  end

    #Negative Case1
    it "It returns the number of pair in Array" do
      expect(sockMerchant(arr)).to eql(4)
    end

    #Negative Case2
    it "It returns the number of pair in Array" do
      expect(sockMerchant(arr2)).to eql(7)
    end


end
