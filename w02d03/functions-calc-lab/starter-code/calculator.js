
run();

function run(){
    var tryagain = true;
    var answer = null;

    // Bonus, keep looping until we say stop
    while (tryagain) {
        calc = menu();
        if(calc == "n") {
            answer = numCalc();
        } else if (calc == "w") {
            answer = wordCalc();
        }
        else {
            alert("invalid");
        }

        // only print the answer if we calculated one
        if(answer) alert(answer);


        // should we continue. "" is falsey "q" is truthy
        tryagain = !prompt('Enter to continue, or (q)uit');
    }
}

//calculation functions

function menu(){
    var calc = prompt('Which calculator do you want to use: (n)umbers or (w)ords');
    return calc;
}

function numCalc(){
            choice = numMenu();
            var value1 = parseFloat(prompt('enter first value')); // parseFloat to turn the string to a decimal number
            if(choice != "sq") {
                var value2 = parseFloat(prompt('enter the second value'));
            }

            if(choice == "a") {
                answer = add(value1, value2);
            } else if(choice == "s") {
                answer = subtract(value1, value2);
            } else if(choice == "m") {
                answer = multiply(value1, value2);
            } else if(choice == "d") {
                answer = divide(value1, value2);
            } else if(choice == "p") {
                answer = power(value1, value2);
            } else if(choice == "sq") {
                answer = squareroot(value1);
            } else if(choice == "la") {
                answer = largest(value1, value2);
            } else if(choice == "sm") {
                answer = smallest(value1, value2);
            } else { // didn't match any of the options
              alert('Sorry, that option was not valid');
            }
    return answer;
}

function wordCalc(){
            choice = wordMenu();
            var sentence = prompt('enter sentence');
            if (choice == "i") {
                var word = prompt('enter word to count');
            } else if (choice == "a"){
                var length = parseFloat(prompt('enter minimum word length'));
            }

            if(choice == "n") {
                answer = wordNumber(sentence);
            } else if(choice == "l") {
                answer = longestWord(sentence);
            } else if(choice == "i") {
                answer = instances(sentence, word);
            } else if(choice == "a") {
                answer = allWords(sentence, length);
            } else { // didn't match any of the options
              alert('Sorry, that option was not valid');
            }
    return answer;
}

function numMenu(){
    var choice = prompt('Choose your action (a)dd (s)ubtract (m)ultiply (d)ivide (p)ower (sq)uare root (la)rgest (sm)allest') || "a";
    return choice;
}

function wordMenu(){
    var choice = prompt('Choose your action (n)umber of words (l)ongest word (i)nstances of words in a sentence (a)ll words in sentence longer than given length');
    return choice;
}

function add(v1, v2){
    return v1 + v2;
}

function subtract(v1, v2){
    return v1 - v2;
}

function multiply(v1, v2){
    return v1 * v2;
}

function divide(v1, v2){
    return v1 / v2;
}

function power(v1, v2){
    return Math.pow(v1, v2);
}

function squareroot(v1){
    return Math.sqrt(v1);
}

function largest(v1, v2){
    return Math.max(v1, v2);
}

function smallest(v1, v2){
    return Math.min(v1, v2);
}

function wordNumber(v1){
    words = v1.split(" ");
    return words.length;
}

function longestWord(v1){
    var longest = 0;
    var ans = null;
    words = v1.split(" ");
    for (i = 0; i < words.length; i++){
        if (words[i].length > longest){
            ans = words[i];
            longest = words[i].length;
        }
    }
    return ans;
}

function instances(v1, v2){
    var count = 0;
    words = v1.split(" ");
    for (i = 0; i < words.length; i++){
        if (words[i] == v2){
            count++
        }
    }
    return count;
}

function allWords(v1, v2){
    words = v1.split(" ");
    longer = [];
    for (i = 0; i < words.length; i++){
        if (words[i].length >= v2){
            longer.push(words[i]);
        }
    }
    return longer;
}


