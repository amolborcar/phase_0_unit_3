# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode
# 1. input=number
# 2. output=true or false
# Create a method that determines if the number is part of the fibonacci sequence
# 


# 3. Initial Solution



def is_fibonacci?(num)
arr=[0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946]
  x=0
  while num<arr[x]
  	return x+=1
end
	return true if arr[x-1]==arr[x-2]+arr[x-3]
end



p is_fibonacci?(21)

# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE






# 5. Reflection 