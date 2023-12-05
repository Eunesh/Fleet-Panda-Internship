#Lambda are almost similar to Procs with some differences

a_lambda = lambda {puts "I'm the Lamda"}

def lambda_demo(&a_lambda)
  puts "I'm the method!"
  a_lambda.call
end

lambda_demo(&a_lambda)


#Difference between Lambda and Procs

#1st Differences

#proc will not check arguments strictly if we pass less then required arguments instead of 2 then still code will not throw erro and missing argument is shown as null
procvar = proc {|x, y| puts "hey its #{x} and #{y}" }

procvar.call("x");

# lambda will check arguments strictly and if we pass less then required arguments then it will throw error
lambdavar = lambda {|x, y| puts"hey its #{x} and #{y}"}

lambdavar.call("x");


#2nd Differences

# When a lambda returns, it passes control back to the calling method
#In below method "Hello from lambdafunc" will get printed
def lambdafunc
  lambdavar = lambda {return "hello from lambda"}
  lambdavar.call
  "Hello from lambdafunc "
end

puts lambdafunc

#When a Procs returns, It doesnt passes control back to the calling method
#In below method "Hello from Procsfunc" will get printed
def procsfunc
  procsvar = proc { return "Hello from Proc"}
  procsvar.call
  "Hello from Procsfunc"
end

puts procsfunc
