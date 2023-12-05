# Ruby Block uses either do...end or simply curly braces {}
# As we know everything is object in ruby but blocks are only exception
# Blocks can't be saved to variable because of above reason


#Block start with do end with each method
[9,8,7].each do |num|
  puts num
end


#Block starts with {} with each method
[9,8,7].each {|num| puts num}


#Blocks can be combined with methods
5.times {puts "run 5 times"};


#calling block without yield
def explicit_block(&unesh)
  unesh.call("unesh")  # same as yield
end

explicit_block {|name| puts "Explicit Block call by #{name}"}


# yield is used for calling a block
def test_block()
  puts "In the method"
  puts "Now yieldingg"
  puts yield("unesh")
  puts "back to method again"
end

#calling test_block block
test_block() { |n| "From the block, by #{n}"}
