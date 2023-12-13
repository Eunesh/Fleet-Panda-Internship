require_relative 'Book'



class Member
  attr_accessor :book
  def initialize(book)
    @book = book.new    # Creating instance of Passed Book class, this is becasue  we can now access Book class from Member class
  end

  def borrowBook(bookname)
    @booklist = @book.bookList;
    if @booklist.key?(bookname.intern)
      @booklist.delete(bookname.intern)
      # @booklist[bookname.intern] = "This book is borrowed"
      return true
    else
      return false
    end
  end


  def returnBook(bookname)

  end
end

# Passing Book, Tranaction class on Member constructor which is required from Book.rb, Transaction.rb
# m = Member.new("unesh", Book, Transaction);

# # m.borrowBook("Nepal");
# # m.borrowBook("Habit");
# puts m.book.availableBookList;
