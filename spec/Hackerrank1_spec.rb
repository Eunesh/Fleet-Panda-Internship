require './December6/Hackerrank1' #importing Hackerrank1.rb file

describe "sockMerchant" do     # use Double quotes for accesing method
    it "It returns the number of pair in Array" do
      expect(sockMerchant([1,0,1,0,9,2,1,2])).to eql(3)
    end
end
