<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<style>
  .block {
    position: absolute;
    background-color: #abc;
    left: 50px;
    width: 100px;
    height: 100px;
    margin: 5px;
  }
  </style>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/alerttest.js"></script>

<script type="text/javascript">
	$(document).ready(function(){
		$('.btn1').click(function(){
			$('.block').animate({
				"left": "+=50px"
			},1000);
		});
		$(".btn2").click(function(){
			$(".block").animate({
				"left": "-=50px"
			},1000);
		});
		$(".btn3").click(function(){
			$(".block").css('backgroundColor','blue');
		});
		$(".btn4").click(function(){
			$(".block").animate({
			    "width": "+=100px",
		    	"height": "+=100px"
			},1000);
		});
		$(".btn5").click(function(){
			$(".block").animate({
			    "width": "-=100px",
		    	"height": "-=100px"
			},1000);
		});
	});
</script>

<title>JQ练习</title>
</head>
<body>
<h1>这个页面用来练习jQuery的使用</h1>
	<input class="btn1" type="button" value="向右移动" />
	<input class="btn2" type="button" value="向左移动" />
	<input class="btn3" type="button" value="改变颜色" />
	<input class="btn4" type="button" value="变大" />
	<input class="btn5" type="button" value="变小" />
	<div class="block"></div>
	<input class="btn" type="button" id="functionaa" value="其他页面js函数测试" />
</body>
</html>