require_relative 'Book'
require_relative 'Member'
require_relative 'Transaction'

class Library
  # @admin = {"unesh" => true};
  def initialize(book, member, transaction)

    # Creating Instance of Specific class to access them in this class, All the classes are passed in initialize method here
    @member = member.new(book)
    @book = book.new;
    @transaction = transaction.new;

    puts "can you please tell me your name?"
    @name = gets.chomp

    puts "Welcome to our Library #{@name}. If you want to enter library press 'enter'"
    response = gets.chomp

    if response == "enter"
      return start();
    end
  end

  def start()
      puts "
      Press 1 to view list of Books
      Press 2 to Borrow Books
      Press 3 to exit
      "
      x = gets.chomp.to_i
      case x
      when 1
        puts @book.bookList
        start()
      when 2
        puts "which book do you want to borrow?"
        bookname = gets.chomp
        if @member.borrowBook(bookname)
          @transaction.costCalculator
          File.open("Bill.txt", 'a' ) {|f| f.write("\n" + bookname.to_s+ "\n" + "TotalCost:Rs#{@transaction.totalCost}")}
          puts "#{bookname} is Borrowed and your cost will be #{@transaction.totalCost}";
          start()
        else
          puts "Sorry Bookname not found"
          start()
        end

      when 3
        puts "Exiting ...."
      else
        puts "Invalid Input"
      end
  end
end



# Passing instance of Book class(b) to Library class, because of this we can access Book class from Library class
l = Library.new(Book, Member, Transaction);


# if response == "1"
#   @book.bookList.each {|keys,values| puts keys}
#   puts ""
# end

# if response == "2"
#   puts "which book do you want to borrow?"
#   bookname = gets.chomp
#   @member.borrowBook(bookname);
#   @transaction.costCalculator
#   puts @book.bookList
#   puts "#{bookname} is Borrowed and your  and your cost will be #{@transaction.totalCost}";
# end
