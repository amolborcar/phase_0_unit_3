# U3.W8-9: Numbers to English Words


# I worked on this challenge with Jen Tutu.

# 2. Pseudocode



# 3. Initial Solution

def in_words(num)
if num < 0 || num > 100
    raise "Please insert number between 0 & 100 inclusive"
end
num_words_hash = {0=>"zero",1=>"one",2=>"two",3=>"three",4=>"four",5=>"five",6=>"six",7=>"seven",8=>"eight",9=>"nine",
    10=>"ten",11=>"eleven",12=>"twelve",13=>"thirteen",14=>"fourteen",15=>"fifteen",16=>"sixteen",
    17=>"seventeen", 18=>"eighteen",19=>"nineteen",
    20=>"twenty",30=>"thirty",40=>"forty",50=>"fifty",60=>"sixty",70=>"seventy",80=>"eighty",90=>"ninety", 100=>"one hundred"}

if  num.between?(0, 20) || num == 100 #check tht this is inclusive
  return num_words_hash[num]
elsif num !=100
    num_string= num.to_s[0]+"0" 
    if num.to_s[1] != "0" 
        ones_string= num.to_s[1]
        return num_words_hash[num_string.to_i] + " " + num_words_hash[ones_string.to_i]
    else 
    return num_words_hash[num_string.to_i]
    end
end
end


# 4. Refactored Solution






# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p in_words(100) == "one hundred"
p in_words(41) == "forty one"
p in_words(0) == "zero"
p in_words(6) == "six"


# 5. Reflection 