class Book
  attr_accessor :bookname
  def initialize()
    # @filename = 'Bookname.txt'
    @@bookname ={
      HarryPotter: "Available",
      GoodAndBad: "Available",
      HurryUp: "Available",
      CantHurtMe: "Available",
    }
  end;

  def addBooks(bookname)
   @@bookname[bookname] = "Available"
    # open(@filename, 'a') do |f|
    #   f << "\n" + "#{@bookname}"
    # end
  end

  def bookList
    # content = File.read(@filename)
    # return  content
    return @@bookname
  end
end

# b = Book.new();

# # b.addBooks("Again One")
# puts b.bookname;
