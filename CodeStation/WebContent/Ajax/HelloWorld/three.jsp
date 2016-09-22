<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>三级联动</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript">

	$(function(){
		$("#school").on("change",function(){
			var school = $(this).val();
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/ThreeServlet",
				dateType:"json",
				data:{"type":school},
				success:function(data){
					//var josn = eval("("+data+")");//处理返回的json
					$("#grade").empty();
					$("#grade").append("<br><option>请选择……</option>");
					$("#grade").append(data);
				},
				error: function (msg) {
	                alert(msg);//弹出错误信息
	            }
			});
		});
		$("#grade").on("change",function(){
			var grade = $(this).val();
			$.ajax({
				type:"POST",
				url:"${pageContext.request.contextPath}/ThreeServlet",
				dateType:"json",
				data:{"type":grade},
				success:function(data){
					$("#class").empty();
					$("#class").append("<br><option>请选择……</option>");
					$("#class").append(data);
				},
				error: function (msg) {
	                alert(msg);//弹出错误信息
	            }
			});
		});
		$("#class").on("change",function(){
			var school = $("#school").val();
			var grade = $("#grade").val();
			var aclass = $("#class").val();
			$("#message").empty();
			$("#message").append("<p>您选择了"+school+grade+aclass+"</p>");
		});
	})

</script>

</head>
<body>
	<h1>这个页面用来练习三级联动（Ajax）</h1>
	<p>由于没有连接数据库，现在只有 小学 一年级 有全部数据，其他数据缺失</p>
    <span>学校:</span>
    <select id='school'>
    	<option>请选择……</option>
    	<option>幼儿园</option>
    	<option>小学</option>
        <option>初中</option>
        <option>高中</option>
        <option>大学</option>
    </select>
    <span>年级:</span>
    <select id='grade'>
    	<option>请选择……</option>
    </select>
    <span>班级:</span>
    <select id='class'>
    	<option>请选择……</option>
    </select>
    <div id="message">
    </div>
</body>
</html>