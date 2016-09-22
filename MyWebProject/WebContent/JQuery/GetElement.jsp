<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8utf-8">
<title>获取节点</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>

<script type="text/javascript">
	window.onload = function(){
		$("#btn3").click(function(){
			var te = $("#cs").html();
			alert(te);
		})
		$("#btn4").click(function(){
			$("#cs").text("<input type='button' value='生成一个button'>");
		})
		$("#btn5").click(function(){
			$("#cs").html("<input type='button' value='生成一个button'>");
		})
		$("#btn6").click(function(){
			$("#cs").append("<br/><input type='button' value='添加了一行'>");
		})
		$("#btn7").click(function(){
			$("#cs").attr({"style":"background-color: blue"});
		})
		$("#btn1").click(function(){
			var te = document.getElementById("te").value;
			alert(te);
		})
		$("#btn2").click(function(){
			var te = document.getElementById("te").value;
			document.getElementById('message').innerHTML=te;
		})
	}
</script>

</head>
<body>
	<h1>这个文档用来测试3种获取节点的方法</h1>
	
	<div id="cs">内容：城市</div>
	<input type="button" id="btn3" value="点我显示内容" />
	<input type="button" id="btn4" value="点我修改内容（text版）" />
	<input type="button" id="btn5" value="点我修改内容（html版）" />
	<input type="button" id="btn6" value="点我添加一行" />
	<input type="button" id="btn7" value="点我改颜色" />
	<br/>
	<br/>
	
	<input type="text" id="te"/><br/>
	<input type="button" id="btn1" value="点我获取输入框的值" />
	<br/>
	<p>获取上面的输入框的内容并且改变下面的信息</p>
	<div id="message">点击改变</div>
	<input type="button" id="btn2" value="点我改变信息" />

</body>
</html>