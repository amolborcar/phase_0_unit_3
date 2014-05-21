# U3.W8-9: 


# I worked on this challenge by myself.

# 2. Pseudocode

# Create method 
	# Create loop to calculate fibonacci numbers in an array
	# Make loop go until the last number is greater than or equal to the input number
	# Test whether the input number is equal to the last number in the fib array
		# If so, return true.  Else return false
# End method



# 3. Initial Solution

def is_fibonacci?(num)
    fib_arr = [0,1]
    
	while fib_arr[-1] < num do
		fib_arr << fib_arr[-2]+fib_arr[-1]
	end

	return true if num == fib_arr[-1]
	return false

end


# 4. Refactored Solution


# Same as above, not sure how to refactor further



# 1. DRIVER TESTS GO BELOW THIS LINE

puts is_fibonacci?([0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample) == true
puts is_fibonacci?(8670007398507948658051921) == true
puts is_fibonacci?([0,1,1,2,3,5,8,13,21,34,55,89,144,233,377,610,987,1597,2584,4181,6765,10946].sample+100) == false
puts is_fibonacci?(927372692193078999171) == false


# 5. Reflection 

# This was difficult for me at first, just because I wasn't sure how to get started
# with this challenge.  Calculating the Fibonacci sequence seemed difficult until
# I just took a step back and thought about it piece by piece, and then the first solution
# I tried worked really well.  I tried to make it dynamic, so any number could be tested no matter how large,
# and think my code accomplished that.