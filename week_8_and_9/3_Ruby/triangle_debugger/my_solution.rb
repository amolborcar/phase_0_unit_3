# U3.W8-9: Triangle Debugger


# I worked on this challenge:
# 1) Amol Borcar
# 2) Kendall Carey


# 1. Original Solution

# def valid_triangle?(a, b, c)
#   sum = 0
#   if a != 0 || b != 0 || c != 0
#     if a >= b
#       largest = a
#       sum += b
#     else 
#       largest = b
#       sum += a
#     end
#     if c > largest
#       sum += largest
#       largest = c
#     else 
#       sum += c
#     end
#     if sum > largest
#       return true
#     else 
#       return false
#     end
#   else 
#     return false
#   end
# end


# 2. Answer the question for each bug

# --- Bug 1 ---
# * what is the exact description of the error? 
# it was expecting 4 arguments instead of 3
# * what is the exact line number the error is appearing? 
# line 9
# * before you fix the bug, what do you think is causing the error? 
# The wrong amount of arguments, should be 3.

# --- Bug 2 ---
# * what is the exact description of the error?
# no method for '+'
# * what is the exact line number the error is appearing?
# lines 14, 17, 21, 24
# * before you fix the bug, what do you think is causing the error?
# we deleted sum from the arguments and so the sum method didn't make sense

# --- Bug 3 ---
# * what is the exact description of the error?
# expected true value, got false value, and vice-versa
# * what is the exact line number the error is appearing?
# lines 20 and 46
# * before you fix the bug, what do you think is causing the error?
# the code is not returning true and false as boolean values, it is returning "true" and "false" as strings


# 3. Refactored Solution (Comment the other code to run this)

def valid_triangle?(a, b, c)
  if a != 0 || b != 0 || c != 0
  a+b>c && a+c>b && b+c>a
  end
end



# 4. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

p valid_triangle?(3,4,5) == true
p valid_triangle?(5,5,600) == false
p valid_triangle?(10,10,11) == true
p valid_triangle?(1,1,100) == false


# 5. Reflection

# This challenge didn't seem particularly difficult, the bugs were pretty easy to spot
# except for the last one.  Refactoring the challenge also wasn't too bad because we had
# both done this challenge during pre-phase 0 prep and remembered somewhat how to do it.
#   I feel pretty comfortable debugging using rspec though and would welcome more difficult
#   challenges of this nature.