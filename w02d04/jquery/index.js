/*$(function() {
 // getting element from DOM
 var count = $("#count"); //same as getElementBy .class #id
 // create new element to add to DOM
 var li = $("<li>New things</li>")// count.innerHTML
 // add element to DOM
 $("#list").append(li);
 //var items = $("li");
 //var done = $("li.done");
 var todos = ["item1", "item2"]
 $(todos).each(function(index, todo)
  { //same as looping through array
 	console.log(todo);
 });
}); //same as DOMContentLoaded */

$(function() {
    // Getting element from the dom
    var count = $("#count");
    // Creating new element to add to the DOM
    var li = $("<li>New thing</li>");
    // Add element to the DOM
    $("#list").append(li);

    var todos = ["Food shop", "Wash clothes", "Pay bills"];
    // Loop
    $(todos).each(function(index, todo) {
        console.log(todo);
    })

    // .html - changing text on the page
    $("#count").html("5");

    // .css - changing the css on the page
    //$("#count").css("color", "red");

    // $("li").css("font-size", "50px");

    //chaining
    $("count").html("5").css("color", "red");

    //don't have to loop through
    $("li").addClass("done");

   	// events
   	$("#myButton").click(function() {
   		console.log("button clicked");
   	});

   	//would work for other listeners
   	//$("myButton").on("click", function() {

   	//});
});
