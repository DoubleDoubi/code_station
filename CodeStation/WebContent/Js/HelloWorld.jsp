<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>HelloWorld</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">

	function delete_space(){
		var vspa = document.getElementById("delete_space").value;
		
		var re = vspa.replace(/(^\s*)|(\s*$)/g, "");
		document.getElementById("delete_space").value = re;
	}
	
	window.onload = function(){
		var btn = document.getElementsByTagName("button")[0];
		btn.onclick = function(){
			alert("Hello! you click the btn !!  ");
		}
		
	}

</script>
</head>
<body>

	<button>ClickMe1</button>
	<br/>
	<p>下面来演示去除前后两端的空格</p>
	<input type="text" id="delete_space"/>
	<input type="button" value="点我去空格" onclick="delete_space()"/>
	
</body>
</html>