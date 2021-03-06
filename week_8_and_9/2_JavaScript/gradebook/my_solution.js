/*
U3.W8-9: Gradebook from Names and Scores

You will work with the following two variables.  The first, students, holds the names of four students.  
The second, scores, holds groups of test scores.  The relative positions of elements within the two 
variables match (i.e., 'Joseph' is the first element in students; his scores are the first value in scores.).

Do not alter the students and scores code.

I worked on this challenge [by myself, with:]

*/

var students = ["Joseph", "Susan", "William", "Elizabeth"]

var scores = [ [80, 70, 70, 100],
               [85, 80, 90, 90],
               [75, 70, 80, 75],
               [100, 90, 95, 85] ]






// __________________________________________
// Write your code below.

// Create a variable Average and assign it the value of a function
// Have average accept an array of numbers and returns the average of those numbers

// var average = function(arr) {
//   var total = 0;
//   for (var i in arr) {
//     total += arr[i];
//   }
//   var avg = total/arr.length;
//   return avg;
// }

// Create a variable called gradebook and assign it a value of a new object
// Make each student name in students a property of gradebook and assign each the value of a new object.

var gradebook = {
  Joseph: {
    name: "Joseph"
  },
  Susan: {
    name: "Susan"
  },
  William: {
    name: "William"
  },
  Elizabeth: {
    name: "Elizabeth"
  }

};

// Give each student property of gradebook its own testScores property and assign it the value of the respective students scores from scores.

gradebook.Joseph.testScores = scores[0];
gradebook.Susan.testScores = scores[1];
gradebook.William.testScores = scores[2];
gradebook.Elizabeth.testScores = scores[3];

// create an addscore property on gradebook that adds a score to a person's array

// gradebook.addScore = function(student, score) {
//   student.testScores.push(score);
// }

// A getAverage property to gradebook and assign it the value of a function ...
// Modify getAverage so that it accepts a name as a String (e.g., "Joseph") and returns the named students average.

// gradebook.getAverage = function(name) {
//   for (var i in gradebook) {
//     if (gradebook[i].hasOwnProperty("name")) {
//       if (gradebook[i]["name"] === name) {
//         return average(gradebook[i]["testScores"]);
//       }
//     }
//   }
// }

// for (var i in gradebook) {
//   if (gradebook[i].hasOwnProperty("name")) {
//     console.log(gradebook[i]["name"]);
//   } else {
//     console.log("no name");
//   }
// }


// __________________________________________
// Refactored Solution

var average = function(arr) {
  var total = 0;
  for (var i in arr) {
    total += arr[i];
  }
  var avg = total/arr.length;
  return avg;
}

gradebook.addScore = function(student, score) {
  student.testScores.push(score);
}

// Removed hasOwnProperty line, it was unnecessary
gradebook.getAverage = function(name) {
  for (var i in gradebook) {
    if (gradebook[i]["name"] === name) {
      return average(gradebook[i]["testScores"]);
    }
  }
}


// __________________________________________
// Reflect

// This challenge ended up being a lot more difficult than I thought it would be originally.
// The thing that kept throwing me was supplying the student's name as a string, as opposed to
// as the name of the object, and having the function find the right student.  I think my method
// was convoluted but I tried to do it without looking up anything online, and it worked, so I was
// glad I could solve it on my own.  However, I am going to go lookup other methods that may
// be more efficient or easier to understand.


// __________________________________________
// Driver Code:  Do not alter code below this line.


function assert(test, message, test_number) {
  if (!test) {
    console.log(test_number + "false");
    throw "ERROR: " + message;
  }
  console.log(test_number + "true");
  return true;
}

assert(
  (average instanceof Function),
  "The value of average should be a Function.\n",
  "1. "
)

assert(
  average([1, 2, 3]) === 2,
  "average should return the average of the elements in the array argument.\n",
  "2. "
)

assert(
  (gradebook instanceof Object),
  "The value of gradebook should be an Object.\n",
  "3. "
)

assert(
  (gradebook["Elizabeth"] instanceof Object),
  "gradebook's Elizabeth property should be an object.",
  "4. "
)

assert(
  (gradebook.William.testScores === scores[2]),
  "William's testScores should equal the third element in scores.",
  "5. "
)

assert(
  (gradebook.addScore instanceof Function),
  "The value of gradebook's addScore property should be a Function.",
  "6. "
)

gradebook.addScore(gradebook.Susan, 80);

assert(
  (gradebook.Susan.testScores.length === 5
   && gradebook.Susan.testScores[4] === 80),
  "Susan's testScores should have a new score of 80 added to the end.",
  "7. "
)

assert(
  (gradebook.getAverage instanceof Function),
  "The value of gradebook's getAverage property should be a Function.",
  "8. "
)

assert(
  (gradebook.getAverage("Joseph") === 80),
  "gradebook's getAverage should return 80 if passed 'Joseph'.",
  "9. "
)