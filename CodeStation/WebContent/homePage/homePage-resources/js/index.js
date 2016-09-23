
window.onload = function(){
	
	$(".homePage_menu").click(function(){
		$(".homePage_list").css("style","display:none");
		$(this).next().slideToggle("fast");
	});

}