
// U3.W8-9: 


// I worked on this challenge with Amol Borcar and Greg White.

// 2. Pseudocode
// a. Creating a grocery list object
// b. Create an array which is the list of items within the grocery list
// c. Create functions called on the grocery list object
//    1. Add item
//    2. Remove item
//    3. View list


// 3. Initial Solution

var GroceryList = {
    list: [],
    add: function(item) {
    	this.list.push(item);
    },
    remove: function(item) {
    	var pos = this.list.indexOf(item);
    	this.list.splice(pos,1);
    },
    viewList: function() {
    	console.log("My Shopping List:")
    	console.log("-----------------")
    	for (var i = 0; i < this.list.length; i ++) {
    		console.log(this.list[i].name + ": " + this.list[i].quantity)
    	}
    	console.log();
    }
};

function Item(name, quantity) {
	this.name = name;
	this.quantity = quantity;
};




// 4. Refactored Solution


// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE

banana = new Item("Banana", 5);
orange = new Item("Orange", 2);
chicken = new Item("Chicken", 1);

GroceryList.add(banana);
GroceryList.add(orange);
GroceryList.viewList();
GroceryList.remove(banana);
GroceryList.add(chicken);
GroceryList.viewList();



// 5. Reflection 