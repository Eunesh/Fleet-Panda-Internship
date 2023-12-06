class ArrayofHashes
  #@@ Class variable
  @@bigArr = []
  def initialize(playername, arr)
    #@ class instance variable
    @playername = playername;
    @arr = arr
    @hash = {}
  end

  def Add()
    @hash[@playername] = @arr;
    @@bigArr.push(@hash);
    return puts "Added"
  end

  def getHash()
    return puts @@bigArr;
  end

  def emptyArr()
    @@bigArr = []
    puts "Emtied Array"
  end
end

class commit


end

# array = ArrayofHashes.new("player1", [1,2,3])
# array2 = ArrayofHashes.new("player2", [4,5,6])
# array3 = ArrayofHashes.new("player2", [7,8,9])

# array.Add();
# array2.Add();
# array3.Add();
# array.emptyArr()
# array.getHash();


# array2.getHash();
