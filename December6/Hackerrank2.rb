#1st way
def repeatedString1(s, n)
  new_s = ""
  n.times {new_s = new_s + s}

  new_s[0..n].count('a')

end


puts repeatedString1("a", 10000)




#2nd way (Best way)
def repeatedString2(s, n)
  result = n / s.length * s.count('a')
  if n % s.length != 0
      result += s[0..n % s.length - 1].count('a')
  end
result
end

puts repeatedString2("a", 10000)
