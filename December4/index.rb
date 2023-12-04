mixedArray = [1, "Hellohi", "world", 3.14, 777, 7.77, true, false, 70, "hi", 5]



#Global functions for specific datatype array
def number
    @number ||= []
end

def string
    @string ||= []
end

def boolean
    @boolean ||= []
end

def float
    @float ||= []
end

def dumb
    @dumb ||= []
end

def smart
    @smart ||= []
end



#for CheckandAdd
def CheckandAdd(var)
    #Arrays for specific Datatypes

    case var
    when String
        string.push(var)
    when Integer
        number.push(var)
    when TrueClass
        boolean.push(var)
    when FalseClass
        boolean.push(var)
    when Float
        boolean.push(var)
    else
        "There are no more data types"
    end
end

# for pushing different datatypes in specific array
for var in mixedArray do
    CheckandAdd(var);
end


#For counting length of array in specific datatype array
def Count(arr)
    datacount = arr.length();
    return datacount
end


#For finding sum of all Intergers and Floats
def Add(arr)
    sum = 0
    for num in arr
        sum += num
    end
    return sum

end

# for Average
def Avg(sum, arr)
    average = sum / arr.length
    return average
end


#  for finding prime number
def prime(var)
        if var <= 1
            return false
        end

       for n in (2..var-1)
        if var % n == 0
            return false
        end
    end
    return true
end


def ListingPrime(arr)
    for var in arr
        if prime(var)
            return var
        end
    end
end

#for Longest String
def LongestString(arr)
    word = ""
    for var in arr
       if var.length >= word.length
         word = var;
       end
    end
    return word
end

# For distributing String by size
def DistributeString(arr)

    for var in arr
        if var.length >= 5
            smart.push(var)
        else
            dumb.push(var);
        end

    end
end



#Outputs

#Specific datatype array distributed according to datatype

# puts number;
# puts string;
# puts boolean;
# puts float;

# For finding Prime number from integer array
# puts ListingPrime(number);

# For Counting Specific datatypes;
# puts Count(string);
# puts Count(number);
# puts Count(boolean);
# puts Count(float)

# Finding sum of integer and float array
# puts Add(number)
# puts Add(float)


#Finding Average
# puts Avg(Add(number), number)
# puts Avg(Add(float), float)


#finding Longest String in Array

# puts LongestString(string);

#Distribute Array According to its length

# DistributeString(string)

# puts dumb
# puts smart
