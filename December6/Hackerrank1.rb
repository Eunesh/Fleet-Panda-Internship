def sockMerchant(ar)
  hashArr = {}  #initializing empty  hash
  pairs = 0
 ar.each do |num|
  if hashArr.key?(num)
      hashArr.delete(num);
      pairs += 1
  else
      hashArr[num] = true
  end
 end
 puts pairs

end


sockMerchant([1,1,1]);
