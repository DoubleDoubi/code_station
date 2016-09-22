<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>这个例子用来练习ajax判断用户名存在问题</title>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">
	$(function(){
		$(".te").change(function(){
			
			var val = $(".te").val();
			val = $.trim(val);
			
			if(val != null){
				var url = "${pageContext.request.contextPath}/LoginServlet";
				var args = {"username":val,"time": new Date()};
				
				$.post(url,args,function(data){
					$("#message").html(data);
				})
			}

		});

	});
</script>
</head>
<body>
<h1>这个页面用来判断用户是否使用</h1>
UserName:<input class="te" type="text" name="username" id="username" />
<br/>
<div id="message"></div>
<br/>
<p>AAA BBB CCC 被占用，其他均可以使用</p>
</body>
</html>