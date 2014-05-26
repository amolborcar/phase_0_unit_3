# U3.W8-9: Reverse Words


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Create a method that accepts a string as an argument
       # Create an array with each word in the string as an element in the array
       # Iterate through each element in the array
       # Reverse each element in the array
       # Join back into a combined string
       # Return combined string


# 3. Initial Solution

def reverse_words(string)
       string.split(" ").map{|x| x.reverse}.join(" ").to_s
end

# 4. Refactored Solution

def reverse_words(string)
       string.split(" ").map{|x| x.reverse}.join(" ").to_s
end


# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

reverse_words("This is a reverse sentence") == "ecnetnes esrever a si sihT"

# 5. Reflection 

# We were pretty sure we had already done this challenge in the prep before phase 0, so it wasn't
# anything new.  We were able to write it with almost no difficulty.