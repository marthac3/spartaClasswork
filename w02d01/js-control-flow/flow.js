/*var money = prompt("How much money do you have?");
var drinks = prompt("How many drinks have you had?");
var crisps = prompt("If crisps are free write 0 otherwise write 1")

if (money > 10 && drinks < 3) {
	console.log ("buy another drink");
} else if (money > 5 || crisps == false) {
		console.log ("buy crisps");
} else {
	console.log("go home");
}/*/

var name = "tim";

if(name === "bob") {
	console.log("hi bob");
} else if (name === "tim") {
	console.log("yo tim");
} else if (name === "steve") {
	console.log("aight steve");
} else {
	console.log("hello user");
}

switch (name) {
	case "bob":
		console.log("hi bob");
		break;
	case "tim":
		console.log("yo tim");
		break;
	case "steve":
		console.log("aight steve");
		break;
	default:
		console.log("hello user");
}