# U3.W8-9: 


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Create a new array to push values to
# Loop through each value in the input array (x)
	# if x % 15 == 0, << "FizzBuzz"
	# if x % 5 == 0, << "Buzz"
	# if x % 3 == 0, << "Fizz"
	# else << x
# Return the new array



# 3. Initial Solution

def super_fizzbuzz(array)
	new_arr = []
	array.each do |x|
		if x % 15 == 0
			new_arr << "FizzBuzz"
		elsif x % 5 == 0
			new_arr << "Buzz"
		elsif x % 3 == 0
			new_arr << "Fizz"
		else
			new_arr << x
		end
	end
	return new_arr

end



# 4. Refactored Solution

# Not sure how to refactor further, maybe using a case statement instead of if/then
# but I'm not sure that's any simpler or faster




# 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

puts super_fizzbuzz([3]) == ["Fizz"]
puts super_fizzbuzz([5]) == ["Buzz"]
puts super_fizzbuzz([15]) == ["FizzBuzz"]
puts super_fizzbuzz([1,3,5,15]) == [1,"Fizz","Buzz","FizzBuzz"]


# 5. Reflection 

# I didn't have any problems on this challenge, my first attempt worked fine.  No real
# comments or anything to add.