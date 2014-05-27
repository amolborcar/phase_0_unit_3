$(document).ready(function(){
 
//RELEASE 0: 
  //Link this script and the jQuery library to the jquery_example.html file and analyze what this code does. 
 
$('body').css({'background-color': 'pink'})
 
//RELEASE 1:
  //Add code here to select elements of the DOM 

  var bodyElement = $('body')
 
 
//RELEASE 2: 
  // Add code here to modify the css and html of DOM elements

  $('h1').css({'color': 'blue', 'border': 'black 1px solid', 'visibility': 'visible'})
  $('img').css({'border': 'black 1px solid'})
  $('.mascot h1').html("Chorus Frogs")
 
 
//RELEASE 3: Event Listener
  // Add the code for the event listener here 

  $('img').on('mouseover', function(event){
  	event.preventDefault()
  	$(this).attr('src', 'http://gmkfreelogos.com/logos/W/img/Warner_Bros_Michigan_J_Frog.gif')
  });
 
 
//RELEASE 4 : Experiment on your own

	$('.myImage').click(function() {
		$('img').animate({
			opacity: 0.8,
			height: 500,
			borderWidth: 10,
			marginLeft: 300
			},
			1000, function() {
		})
	});	
 
})  // end of the document.ready function: do not remove or write DOM manipulation below this.
