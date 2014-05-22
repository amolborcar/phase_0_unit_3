# U3.W7: BONUS Using the SQLite Gem

# I worked on this challenge [by myself, with:]

require 'sqlite3'


$db = SQLite3::Database.open "congress_poll_results.db"


def print_arizona_reps
  puts "AZ REPRESENTATIVES"
  az_reps = $db.execute("SELECT name FROM congress_members WHERE location = 'AZ'")
  az_reps.each { |rep| puts rep }
end

def print_longest_serving_reps(minimum_years)  #sorry guys, oracle needs me, i didn't finish this!
  puts "LONGEST SERVING REPRESENTATIVES"
  #puts $db.execute("SELECT name FROM congress_members WHERE years_in_congress > #{minimum_years}")
  longest = $db.execute("SELECT name, years_in_congress FROM congress_members WHERE years_in_congress > #{minimum_years} ORDER BY years_in_congress DESC, name ASC") # - added in the ORDER BY statement
  longest.each { |rep| puts rep[0].to_s + " - " + rep[1].to_s + " years" }
end

def print_lowest_grade_level_speakers(grade)
  puts "LOWEST GRADE LEVEL SPEAKERS (less than < #{grade}th grade)"
  low_grade = $db.execute("SELECT name FROM congress_members WHERE grade_current < #{grade} ORDER BY grade_current ASC")
  low_grade.each { |rep| puts rep }
end

def print_separator
  puts 
  puts "------------------------------------------------------------------------------"
  puts 
end

def print_state_reps(state)
	puts state.upcase.to_s + " REPRESENTATIVES"
	reps = $db.execute("SELECT name FROM congress_members WHERE location = '#{state}' ORDER BY name ASC")
	reps.each { |rep| puts rep }
	print_separator
end

def total_votes
	puts "TOTAL VOTES RECEIVED"
	vote = $db.execute("SELECT name, COUNT(voter_id) 
		FROM congress_members JOIN votes on congress_members.id = votes.politician_id
		GROUP BY name
		ORDER BY name")
	vote.each { |rep| puts rep[0].to_s + " - " + rep[1].to_s + " votes" }
end

def each_vote
	puts "VOTES RECEIVED BY POLITICIAN"
	names = $db.execute ("SELECT DISTINCT name FROM congress_members ORDER BY name")
	names.flatten!.each do |x|

		voters = $db.execute("SELECT first_name, last_name
			FROM votes JOIN voters on votes.voter_id = voters.id JOIN congress_members on votes.politician_id = congress_members.id
		 	WHERE name = '#{x}'")
		
		puts x + ":"
		puts "---------------"
		voters.each { |name| puts name[0].to_s + " " + name[1].to_s }
		puts
	end

end


# print_arizona_reps

# print_separator

# print_longest_serving_reps(40)
# # TODO - Print out the number of years served as well as the name of the longest running reps
# # output should look like:  Rep. C. W. Bill Young - 41 years
# # DONE

# print_separator
# print_lowest_grade_level_speakers(8)
# # TODO - Need to be able to pass the grade level as an argument, look in schema for "grade_current" column

# # TODO - Make a method to print the following states representatives as well:
# # (New Jersey, New York, Maine, Florida, and Alaska)

print_separator
print_state_reps("NJ")
print_state_reps("NY")
print_state_reps("ME")
print_state_reps("FL")
print_state_reps("AK")

total_votes

each_vote


##### BONUS #######
# TODO (bonus) - Stop SQL injection attacks!  Statmaster learned that interpolation of variables in SQL statements leaves some security vulnerabilities.  Use the google to figure out how to protect from this type of attack.

# TODO (bonus)
# Create a listing of all of the Politicians and the number of votes they recieved
# output should look like:  Sen. John McCain - 7,323 votes (This is an example, yours will not return this value, it should just 
#    have a similar format)

# Create a listing of each Politician and the voter that voted for them
# output should include the senators name, then a long list of voters separated by a comma
#
# * you'll need to do some join statements to complete these last queries!


# REFLECTION- Include your reflection as a comment below.
# How does the sqlite3 gem work?  
# What is the variable `$db` holding?  
# Try to use your knowledge of ruby and OO to decipher this as well as how the `#execute` method works.  Take a stab at explaining the line 
# `$db.execute("SELECT name FROM congress_members WHERE years_in_congress 
#   > #{minimum_years}")`.  Try to explain this as clearly as possible for your fellow students.  
# If you're having trouble, find someone to pair on this explanation with you.

# REFLECTION

# The sqlite3 gem allows ruby "to interface with the sqlite3 database engine" according to the official Rubygems
# documentation.  This means that it can access data that is being read/stored/manipulated using SQLite3.  Ruby submits
# all database queries through SQLite3 when using the gem.
# The variable $db is holding the congress_poll_results.db database, as assigned at the top of this code.
# The execute method takes a code block (in our case, SQL code) and returns an array after executing the code.  Each
# item returned will be its own sub-array.  The block included here will return all names from congress_members that satisfy
# the condition years_in_congress > [input].  It will return all the names in an array as: [["name1"],["name2"],["name3"], etc...]
# Overall I enjoyed this challenge, I had some problems setting up the bonus that asked us to list all the voters,
# since I needed to join all 3 tables.  I also didn't realize I needed to flatten the array and was not getting
# the voter list to populate the first few times, so I was stuck there for a little while, but tested it out each
# step of the way and was able to figure it out without too much difficulty.

# I haven't done the SQL Injection part of the bonus yet but will try to return to it...