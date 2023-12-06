#Class is like blueprint
class GetStarted
  def initialize(name)
    @name = name
  end

  def getName()
    puts "Your name is #{@name}"
  end
end


#Creating object of GetStarted class to access its method
getname = GetStarted.new("unesh");
getname.getName();
