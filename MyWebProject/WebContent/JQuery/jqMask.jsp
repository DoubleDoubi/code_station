<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>遮罩层封装</title>

<script type="text/javascript" src="../resources/js/jquery.js"></script>

	<style type="text/css">
		.div-body{
			position: fixed;
			width: 100%;
			height: 100%;
			background-color: #e0e0e0;
		}
		.div_mask{
			position: fixed;
			width:100%;
			bottom: 0px;
			text-align: center;
		}
		.div-button{
			width: 200px;
			height: 35px;
			background-color: red;			
		}
		li{
			list-style: none;
			width: 200px;
			height: 40px;
			background-color: blue;
			color: white;
			border: solid 1px;
			text-align: center;
			line-height: 40px;
			
		}
		
		.tanchu_mask{  
		    width:100%;  
		    height:100%;  
		    background-color:#000;  
		    opacity:.4;  
		    position: fixed;  
		    left: 0;  
		    top: 0;  
		    z-index:1000;  
		}
	</style>
	
	<script type="text/javascript">
		window.onload = function(){
			$("#btn").on("click",function(){
				$("#btn_mask").slideToggle("fast");
				$(".div-body").append('<div class="tanchu_mask" id="zhezhao"></div>');
			});
			$(document).bind('click', function(e){
					var e = e || window.event;
					var elem = e.target || e.srcElement;  
					while (elem) {//循环判断至跟节点，防止点击的是div子元素    
						if (elem.id && elem.id == 'btn') {      
						return;    
						}
						if (elem.id && elem.id == 'btn_mask') {      
						return;    
						}
						elem = elem.parentNode;  
					}
					
					var flag = document.getElementById("btn_mask");
					if(!flag.style){//如果有display样式
						$("#btn_mask").slideToggle("fast");
					}
					var zhezhao = document.getElementById("zhezhao");
					if(zhezhao!= null)zhezhao.parentNode.removeChild(zhezhao);
			});
		}
	</script>

</head>
<body>
	<div class="div-body">
		<div id="mask">
			<button id="btn" class="div-button">点我</button>
		</div>
	
		<div id="btn_mask" class="div_mask" style="display: none;">
		<ul>
			<li>点击</li>
			<li>取消</li>
		</ul>
		</div>

	</div>

</body>
</html>