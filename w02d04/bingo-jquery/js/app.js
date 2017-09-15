$(function() {

    // Player is dealt a bingo board of numbers randomly
        // Make an array of numbers
        // Generate a random number
        // Slice a number out of the array at the random number position
    var player1 = generatePlayerNumbers();
    var player2 = generatePlayerNumbers();
    showPlayerNumbersOne(player1);
    showPlayerNumbersTwo(player2);
    yellButtonListener();
    console.log(player1);
    console.log(player2);
    
    function selectNumber(numbers) {
        var randomNumber = Math.floor(Math.random()*numbers.length);
        var number = numbers.splice(randomNumber, 1)[0];
        return number;
    }

    function generatePlayerNumbers() {
        var numbers = [1,2,3,4,5,6,7,8,9,10];
        var player = [];
        for (var i = 0; i < 3; i++) {
            var selectedNumber = selectNumber(numbers); 
            player.push(selectedNumber);
        }
        return player;
    }

    // Put bingo board numbers on the page
        // innerHTML
    function showPlayerNumbersOne(playerNumbers) {
        $(playerNumbers).each(function(index, playerNumber) {
            makeBall(playerNumber, $("#player1"));
        });
    }

    function showPlayerNumbersTwo(playerNumbers) {
        $(playerNumbers).each(function(index, playerNumber) {
            makeBall(playerNumber, $("#player2"));
        });
    }

    function makeBall(number, display) {
        var ball = $("<span>"+number+"</span>").addClass("ball");
        display.append(ball);
    }

    // On click, yelled out numbers are yelled out
        // Click event
        // Array of starting numbers randomly selected
    function yellButtonListener() {
        var yellNumbers = [1,2,3,4,5,6,7,8,9,10];
        $("#yell").click(function() {
            if (player1.length !== 0 && player2.length !== 0 ) {
                var selectedNumber = selectNumber(yellNumbers);
                makeBall(selectedNumber, $("#yelledNumbers"));
                compareBalls(selectedNumber, $("#player1"), $("#player2"));
            } else {
                bingo();
            }
        });
    }

    // IF yelled out number is same as player number, remove number from player
    // Put yelled out numbers on the page
    function compareBalls(selectedNumber, displayOne, displayTwo) {
        var indexOne = player1.indexOf(selectedNumber);
        var indexTwo = player2.indexOf(selectedNumber);
        if (indexOne !== -1) {
            var childOne = displayOne.children()[indexOne];
            $(childOne).remove();
            player1.splice(indexOne, 1);
        }
        if (indexTwo !== -1) {
            var childTwo = displayTwo.children()[indexTwo];
            $(childTwo).remove();
            player2.splice(indexTwo, 1);
        }
    }

    function bingo() {
        if (player1.length === 0) {
            alert ("Bingo! Player 1 wins");
        } else if (player2.length === 0) {
            alert ("Bingo! Player 2 wins")
        }
    }

    // IF player has no numbers, BOINGO!

    // Add multiple players
});