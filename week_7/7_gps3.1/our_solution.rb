# U3.W7: Build an Electronic Grocery List!
 
# Your full names:
# 1. Kenneth Mendonca
# 2. Amol Borcar
 
# User Stories (As many as you want. Delete the statements you don't need)
# As a user, I want to add item to grocery list with desired quantity
# As a user, I want to delete items from the list
# As a user, I want to check items off the list
# As a user, I want to display the list with items purchased and not
 
# Pseudocode
# create new class for specific grocery item
# initialize item with name, quantity, and if purchased
# 
# create new class for the grocery list
# create methods for adding, deleting, and displaying items

 
# Your fabulous code goes here....
class GroceryItem

    def initialize(item_name, quantity, purchased = false)
      @item_name = item_name
      @quantity = quantity
      @purchased = purchased
    end
    attr_accessor :item_name, :quantity, :purchased
    
end

class GroceryList
    
    def initialize()
      @list = []
    end
    
    attr_accessor :list
    
    def add_item(*item)
      item.each { |item| list << item }
    end
    
    def delete_item(*item)
      item.each do |item|
        list.delete(item)
      end
    end
    
    def check_off(*item)
      item.each { |item| item.purchased = true }
    end
     
    def view_list
      p "The following items are in your list:"
      list.each do |item|
        if item.purchased
          puts "[x] " + item.item_name + ": " + item.quantity.to_s
        else
         puts "[ ]" + item.item_name + ": " + item.quantity.to_s
        end
      end
    end
    
end



# DRIVER CODE GOES HERE. 
 
banana = GroceryItem.new("Banana", 5)
apple = GroceryItem.new("Apple", 10)
list = GroceryList.new()
list.add_item(banana, apple)
list.view_list
list.check_off(banana)
list.view_list

# Reflection

# I thought this GPS was a good review of the previous week.  We were a little confused by exactly
# what it meant to be a command-line based program, and apparently that was open to interpretation,
# so I can still think of some ways to improve this if I have time to do so.  However, I did think it
#   helped to have an instructor present because I learned some things that, while they worked, I had
#   been doing incorrectly the previous week.  For example, I was using instance variables anytime 
#   I was working within a class because I thought all variables needed to be instance variables, and I 
#   learned during the GPS that this wasn't the case.  My partner said he was doing the same thing.  So things
#   like that are very helpful, because I wouldn't have realized that without an instructor telling me so since
#   the programs still worked.


 