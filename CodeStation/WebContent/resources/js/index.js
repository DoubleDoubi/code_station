
window.onload = function(){
	
	$(".index_classType").click(function(){
		$(".index_list").css("style","display:none");
		$(this).next().slideToggle("fast");
	});

}