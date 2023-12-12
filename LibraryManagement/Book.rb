class Book
  @@availableBookCheck = {
    Nepal: true,
    Habit: true,
    Notion: true
  }

  def initialize()
  end;

  def addBooks(bookname)
    @@availableBookCheck[bookname.intern] = true
  end

  def availableBookList
    return  @@availableBookCheck;
  end
end
