require_relative 'Book'
require_relative 'Transaction'


class Member
  attr_accessor :book
  def initialize(book, transaction)
    @book = book.new    # Creating instance of Passed Book class, this is becasue  we can now access Book class from Member class
    @transaction = transaction.new
  end

  def borrowBook(bookname)
    @booklist = @book.availableBookList;
    if @booklist.key?(bookname.intern)
      @booklist[bookname.intern] = "This book is borrowed"
    else
      puts "Sorry bookname not found!!!"
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
