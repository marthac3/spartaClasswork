//allows all content to load before javascript so js tag can be at top in html
document.addEventListener("DOMContentLoaded", function() {
	//getting 'myButton' id from html
	var button = document.getElementById("myButton");
	var form = document.getElementById("myForm");
	var buttons = document.getElementsByClassName("myButtons");
	var name = document.getElementById("firstname");

	/*button.addEventListener("click", function() {
		console.log("button clicked!");
	});*/

	button.addEventListener("click", handleClick);

	function handleClick(){
		//this is the button as that is the object that causes the event
		console.log(this);
	}

	form.addEventListener("submit", function(event) {
		//prevents default behavior eg reload page
		event.preventDefault();
		//my version
		/*if (name.value != false) {
			console.log(name.value);
		} else {
			console.log("nothing entered");
		}*/
		//v2
		var firstName = name.value;
		if (name) {
			console.log(firstName);
		} else {
			console.log("please enter a name");
		}

		return this.submit();
	});

	for (var i = 0; i < buttons.length; i++) {
		buttons[i]. addEventListener("click", function() {
			console.log(this.value + " clicked!");
		});
	}

});