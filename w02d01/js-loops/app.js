//for loops

var trainers = ["t1", "t2", "t3"];
for (var i = 0; i < trainers.length; i++){
	console.log(trainers[i]);
}

for (var i = 1; i <= 20; i++){
	console.log(i);
}

//while loops

var j = 0;

while (j < 5) {
	console.log("This loop has run " + j + " times.");
	j++;
}

//for in loops

var myObject = {
	a: 1,
	b: 2,
	c: 3
}

for (var key in myObject){
	console.log(key);
	console.log(myObject[key]);
}