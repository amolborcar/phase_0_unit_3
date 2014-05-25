
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
function GroceryList() {
  list = []
};

var groceryList = new GroceryList();

groceryList.prototype = {
    addItem: function(itemName) {
        list.push(itemName)
  }
};


groceryList.prototype = {
    viewList: function() {
        console.log(list)
    }  
};



// 4. Refactored Solution


// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
groceryList.addItem("Banana");
groceryList.addItem("Cereal");


var list = [];

function addItem(item){
    list.push(item);
}

function viewList() {
    console.log(list);
}

function removeItem(item){
    var pos = list.indexOf(item)
    list.splice(pos,1) 
};


// 5. Reflection 