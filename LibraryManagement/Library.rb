require_relative 'Book'
require_relative 'Member'
require_relative 'Transaction'

class Library
  @@admin = {"unesh" => true};
  def initialize(book, member, transaction)

    # Creating Instance of Specific class to access them in this class, All the classes are passed in initialize method here
    @member = member.new(book, transaction)
    @book = book.new;
    @transaction = transaction.new;

    puts "can you please tell me your name?"
    @name = gets.chomp

    puts "Welcome to our Library #{@name}. If you want to see list of book press 1 and press 2 if you want to borrow books"
    response = gets.chomp

    if response == "1"
      @book.availableBookList.each {|keys,values| puts keys}
      puts ""
    end

    if response == "2"
      puts "which book do you want to borrow?"
      bookname = gets.chomp
      @member.borrowBook(bookname);
      @transaction.costCalculator
      puts @book.availableBookList
      puts "#{bookname} is Borrowed and your  and your cost will be #{@transaction.totalCost}";
    end
  end
end



# Passing instance of Book class(b) to Library class, because of this we can access Book class from Library class
l = Library.new(Book, Member, Transaction);
