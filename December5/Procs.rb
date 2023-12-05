#In simple term Procs is a block with name but Procs is full fledge object unlike block
# We know that we can't saved blocks to variable so we use procs if we want fixed block for multiple uses


# Lets look at example of procs used
# Procs is initialized and stored in name
# Procs is called by call method
name = Proc.new {|name| puts "By #{name}"}   # Alternative syntax--> name = proc { |name| puts "By #{name}"}
name.call("unesh")


def Information(&name)
  puts "Information"
  name.call("unesh")
end

# proc is send as yield instad of call
def greeter
yield
end

#name procs is passed as argument in greeter
greeter(&name)

#name procs is passed as argument in Information
Information(&name);



name = "ksdfasdasdasd"
