// U3.W8-9: Gradebook from Names and Scores

// I worked on this challenge [by myself, with:]

// These are the votes cast by each student. Do not alter these objects here.
var votes = {
  "Alex": { 
    president: "Bob", 
    vicePresident: "Devin", 
    secretary: "Gail", 
    treasurer: "Kerry" 
  },
  "Bob": { president: "Mary", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Cindy": { president: "Cindy", vicePresident: "Hermann", secretary: "Bob", treasurer: "Bob" },
  "Devin": { president: "Louise", vicePresident: "John", secretary: "Bob", treasurer: "Fred" },
  "Ernest": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Fred": { president: "Louise", vicePresident: "Alex", secretary: "Ivy", treasurer: "Ivy" },
  "Gail": { president: "Fred", vicePresident: "Alex", secretary: "Ivy", treasurer: "Bob" },
  "Hermann": { president: "Ivy", vicePresident: "Kerry", secretary: "Fred", treasurer: "Ivy" },
  "Ivy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Gail" },
  "John": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Kerry" },
  "Kerry": { president: "Fred", vicePresident: "Mary", secretary: "Fred", treasurer: "Ivy" },
  "Louise": { president: "Nate", vicePresident: "Alex", secretary: "Mary", treasurer: "Ivy" },
  "Mary": { president: "Louise", vicePresident: "Oscar", secretary: "Nate", treasurer: "Ivy" },
  "Nate": { president: "Oscar", vicePresident: "Hermann", secretary: "Fred", treasurer: "Tracy" },
  "Oscar": { president: "Paulina", vicePresident: "Nate", secretary: "Fred", treasurer: "Ivy" },
  "Paulina": { president: "Louise", vicePresident: "Bob", secretary: "Devin", treasurer: "Ivy" },
  "Quintin": { president: "Fred", vicePresident: "Hermann", secretary: "Fred", treasurer: "Bob" },
  "Romanda": { president: "Louise", vicePresident: "Steve", secretary: "Fred", treasurer: "Ivy" },
  "Steve": { president: "Tracy", vicePresident: "Kerry", secretary: "Oscar", treasurer: "Xavier" },
  "Tracy": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Ullyses": { president: "Louise", vicePresident: "Hermann", secretary: "Ivy", treasurer: "Bob" },
  "Valorie": { president: "Wesley", vicePresident: "Bob", secretary: "Alex", treasurer: "Ivy" },
  "Wesley": { president: "Bob", vicePresident: "Yvonne", secretary: "Valorie", treasurer: "Ivy" },
  "Xavier": { president: "Steve", vicePresident: "Hermann", secretary: "Fred", treasurer: "Ivy" },
  "Yvonne": { president: "Bob", vicePresident: "Zane", secretary: "Fred", treasurer: "Hermann" },
  "Zane": { president: "Louise", vicePresident: "Hermann", secretary: "Fred", treasurer: "Mary" }
}

// Tally the votes in voteCount.
var voteCount = {
  president: {},
  vicePresident: {},
  secretary: {},
  treasurer: {}
}

/* The name of each student receiving a vote for an office should become a property 
of the respective office in voteCount.  After Alex's votes have been tallied, 
voteCount would be ...

  var voteCount = {
    president: { Bob: 1 },
    vicePresident: { Devin: 1 },
    secretary: { Gail: 1 },
    treasurer: { Kerry: 1 }
  }

*/


/* Once the votes have been tallied, assign each officer position the name of the 
student who received the most votes. */
var officers = {
  president: undefined,
  vicePresident: undefined,
  secretary: undefined,
  treasurer: undefined
}

// Pseudocode

// Loop through each student in the votes object
  // For each student in votes, check every property to see who the student voted for
  // If the student voted for someone that has already received votes, add 1 to the voteCount for that student
  // If not, add that student to the voteCount object with the correct name
// Find who has max votes for each officer position, then assign that student's name to the officer object


// __________________________________________
// Initial Solution

// function count() {
//   // First loop through every property in the obj input
//   for (var key in votes) {
//     var student = votes[key]; // This makes the student object a variable called student
//     // Now loop through every property in the student variable
//     for (var prop in student) {
//       var choice = student[prop];  // WHY IS THIS NECESSARY???
//       if (student.hasOwnProperty(prop)) {
//         // console.log(prop + " = " + choice);
//         // console.log(voteCount);
        
//         // if (voteCount[prop].hasOwnProperty(student[prop])) {
//         //   voteCount[prop].student[prop] += 1;
//         // }
//         // else {
//         //   voteCount[prop].student[prop] = 1;
//         // }

//         if (voteCount[prop].hasOwnProperty(choice)) {
//           voteCount[prop][choice] += 1;
//         }
//         else {
//           voteCount[prop][choice] = 1;
//         }
        
//       }
//     }
//   }
// }

// function declareWinner() {
//   // Loop through each position in voteCount
//   for (var key in voteCount) {
//     // Find the person with the highest amount of votes
//     // Loop through each student who recorded votes and keep only the max
//     var pos = voteCount[key];
//     var high_votes = 0;
//     for (var candidate in pos) {
//       if (pos[candidate] > high_votes) {
//         high_votes = pos[candidate];
//         winner = candidate;
//       }
//     }
//     // Set the winner in the officers object.
//     officers[key] = winner;
//     console.log("The winning " + key + " had " + high_votes + " votes.  The winner is " + officers[key]);
//   }
// }

// count();
// console.log(voteCount);
// declareWinner();






// __________________________________________
// Refactored Solution

function count() {
  
  for (var key in votes) {
    var student = votes[key]; 
  
    for (var prop in student) {
      var choice = student[prop];  // WHY IS THIS NECESSARY???
      if (student.hasOwnProperty(prop)) {


        if (voteCount[prop].hasOwnProperty(choice)) {
          voteCount[prop][choice] += 1;
        }
        else {
          voteCount[prop][choice] = 1;
        }
        
      }
    }
  }
}

function declareWinner() {
  
  for (var key in voteCount) {
  
    var pos = voteCount[key];
    var high_votes = 0;
    for (var candidate in pos) {
      if (pos[candidate] > high_votes) {
        high_votes = pos[candidate];
        winner = candidate;
      }
    }
    
    officers[key] = winner;
    console.log("The winning " + key + " had " + high_votes + " votes.  The winner is " + officers[key]);
  }
}




// __________________________________________
// Reflection

// This challenge was a huge pain in the ass but I enjoyed it.  I hadn't done any for...in
// loops outside of the codecademy JavaScript course, and I enjoyed the challenge of it, especially
// because I ran into numerous problems along the way.  It took me a while to figure out why some 
// of the conventions, namely dot vs. bracket notation were not working and I had to Google
// quite a few things.  I still have some minor questions left unanswered, but I am glad that after
// I finished the count method, I was able to create the declareWinner method with almost no trouble at all.




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
  (voteCount.president["Bob"] === 3),
  "Bob should receive three votes for President.",
  "1. "
)

assert(
  (voteCount.vicePresident["Bob"] === 2),
  "Bob should receive two votes for Vice President.",
  "2. "
)

assert(
  (voteCount.secretary["Bob"] === 2),
  "Bob should receive two votes for Secretary.",
  "3. "
)

assert(
  (voteCount.treasurer["Bob"] === 4),
  "Bob should receive four votes for Treasurer.",
  "4. "
)

assert(
  (officers.president === "Louise"),
  "Louise should be elected President.",
  "5. "
)

assert(
  (officers.vicePresident === "Hermann"),
  "Hermann should be elected Vice President.",
  "6. "
)

assert(
  (officers.secretary === "Fred"),
  "Fred should be elected Secretary.",
  "7. "
)

assert(
  (officers.treasurer === "Ivy"),
  "Ivy should be elected Treasurer.",
  "8. "
)