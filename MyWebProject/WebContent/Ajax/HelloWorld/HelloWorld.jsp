<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>这个jsp用来测试ajax的HelloWorld</title>
<script type="text/javascript">
	window.onload = function(){
		document.getElementsByTagName("a")[0].onclick = function(){
			var request = new XMLHttpRequest();
			var url = this.href;
			var method = "GET";
			request.open(method,url);
			request.send(null);
			request.onreadystatechange = function(){
				if(request.readyState == 4){
					if(request.status==200||request.status==304){
						alert(request.responseText);
					}
				}
			}
			
			return false;
		}
	}

</script>
</head>
<body>
	<h1>这个页面用来练习Ajax的使用</h1>
	<a href="ajaxhello.txt">click to ajaxhello.txt</a>
</body>
</html>