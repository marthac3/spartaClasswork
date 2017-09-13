
 while (quit != "yes") {

    // get the user inputs
    var calc = prompt('which calc? (b)mi, (m)ortgage (n)ormal');

    if (calc == "b") {
    	var type = prompt('Would you like to use (kg) and meters or (st)one and feet')
   		switch (type) {
   			case "kg":
				var weight = parseFloat(prompt('enter weight in kg'));
				var height = parseFloat(prompt('enter height in m'));
				ans = (weight / height) / height;
				break;
			default:
				var weight = parseFloat(prompt('enter weight in stone'));
				var height = parseFloat(prompt('enter height in feet'))
				weight = weight * 6.35;
				height = height * 0.3;
				ans = (weight / height) / height;
				break;
				}
	}

	else if (calc == "m"){
		var amount = parseFloat(prompt('what is your mortgage amount'));
		var term = prompt ('what is the term in round years');
		var interest = parseFloat(prompt('what is the interest rate'));
	}


    else {
		var value1 = prompt('enter first value'); 
	    var value2 = prompt('enter the second value (if wanting sqrt then no need to type a number)');
	    var choice = prompt('Choose your action (a)dd (s)ubtract (m)ultiply (d)ivide (sq)uareroot, (p)ower') || "a";
	    var ans = 0.0;

	    switch (choice) {
	    	case "s":
	    		ans = parseFloat(value1) - parseFloat(value2);
	    		break;
	    	case "m":
	    		ans = parseFloat(value1) * parseFloat(value2);
	    		break;
	    	case "d":
	    		ans = parseFloat(value1) / parseFloat(value2);
	    		break;
	        case "sq":
	        	ans = Math.sqrt(parseFloat(value1)) ;
	        	break;
	        case "p":
	        	ans = Math.pow(parseFloat(value1), parseFloat(value2));
	        	break;

	    	default:
	    		ans = parseFloat(value1) + parseFloat(value2);
	    }
	}

    alert (ans);
    var quit = prompt('do you want to quit');
}

