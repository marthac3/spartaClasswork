document.addEventListener("DOMContentLoaded", function() {
	
	// Player is dealt a hand of numbers randomly
		// Make an array of numbers
	
		// Generate a random number
		// Slice a number out of the array at the random position
	var player = generatePlayerNumbers();
	var playerDisplay = document.getElementById("player1");
	showPlayerNumbers(player);
	yellButtonListener();
	console.log(player);

	function selectNumber(numbers) {
		var randomNumber = Math.floor(Math.random()*numbers.length);
		var number = numbers.splice(randomNumber, 1)[0];
		return number;
	}

	function generatePlayerNumbers() {
		var numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
		var player = [];
		for (var i = 0; i < 3; i++) {
			var selectedNumber = selectNumber(numbers);
			player.push(selectedNumber);
		}
		return player;
	}

	function showPlayerNumbers(playerNumbers) {
		for (var i = 0; i < playerNumbers.length; i++) {
			makeBall(playerNumbers[i], playerDisplay);
		}
	}

	function makeBall(number, display) {
		var ball = document.createElement("span");
		ball.className = "ball";
		ball.innerHTML = number;
		display.appendChild(ball);
	}
	
	function yellButtonListener() {
		var yell = document.getElementById("yell");
		var yelledNumbersDisplay = document.getElementById("yelledNumbersDisplay");
		var yellNumbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
		yell.addEventListener("click", function() {
			var selectedNumber = selectNumber(yellNumbers);
			makeBall(selectedNumber, yelledNumbersDisplay);
			compareBalls(selectedNumber, playerDisplay);
			// if selected number is the same as a player number take it out
		})
	}

	function compareBalls(selectedNumber, display){
		var index = player.indexOf(selectedNumber);
		if (player.indexOf(selectedNumber) !== -1) {
			display.removeChild(display.children[index]);
			player.splice(index, 1);
		}
	}

	// Put bingo board on page
		// innerHTML

	// On click, yelled out numbers are yelled out
		// Click event
		// Array of starting numbers randomly selected

	// Yelled out numbers on the page

	// IF yelled out number is same as player number, remove number from player

	// IF player has no numbers, BINGO

	// Add multiple players


});