$(function() {
	//setTimeout(function() {
	//	alert("1 second");
	//}, 1000);

	//setInterval(function() {
	//	$("ul").append($("<li></li>"));
	//}, 1000);

	//for (var i = 0; i < 16; i++) {
	//	setTimeout(function() {
	//		$("ul").append($("<li></li>"));
	//	}, i*1000);
	//}

	$("li").each(function(index, li) {
		setTimeout(function() {
			$(li).fadeIn(50000);
			$(li).fadeOut(50000);
		}, index*500);
	});


});