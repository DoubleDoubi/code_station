<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>节点获取</title>
	
	<script type="text/javascript">
	
		//setAttribute设置input属性
		function setAttri(){
			document.getElementById("btn").setAttribute("type", "button");
			document.getElementById("btn").setAttribute("value", "clickMe！");
		}
		
		//添加li标签函数
		function addli(){
			var liNode = document.createElement("li");
			var xmNode = document.createTextNode("啦啦啦啦啦");
			liNode.appendChild(xmNode);
			var cityNode = document.getElementById("city");
			cityNode.appendChild(liNode);
		}
		
		//交换节点方法
		function replaceNode(aNode,bNode){
			var clone = aNode.cloneNode(true);
			bNode.parentNode.replaceChild(clone, bNode);
			aNode.parentNode.replaceChild(bNode, aNode);
		}
		
		//所有节点获得点击删除方法
		function deleteli(){
			var liclick = document.getElementsByTagName("li");
			for(i=0;i<liclick.length;i++){
				liclick[i].onclick = function(){
					var flag = confirm("确认要删除"+this.firstChild.nodeValue+"吗?");
					if(flag){
						this.parentNode.removeChild(this);
					}
				}
			}
		}
		window.onload = function(){
			var setAttr = document.getElementById("setAttr");
			setAttr.onclick = function(){
				setAttri();
			}
			
			var addlibtn = document.getElementById("addlibtn");
			addlibtn.onclick = function(){
				addli();
				deleteli();
			}
			
			var replace_btn = document.getElementById("replace_li");
			replace_btn.onclick = function(){
				var aNode = document.getElementById("city").getElementsByTagName("li")[0];
				var bNode = document.getElementById("game").getElementsByTagName("li")[0];
				replaceNode(aNode,bNode);
			}
			
			deleteli();
			//var conflag = confirm("确认要删除吗？");
		}
	</script>

	<style type="text/css">
		.div-bor{
			border: solid 1px;
			margin-top: 20px;
		}
		li{
			width: 200px;
			background-color: yellow;
			border: solid yellow 1px;
			margin-top: 10px;
		}
	</style>
	
</head>
<body>
	<h1 style="text-align: center;">这是一个练习js节点获取、添加删除等操作的页面</h1>
	<div class="div-bor">
		<p>这是一个用setAttribute方法修改input标签里面熟悉的例子：</p>
		<input id="setAttr" type="button" value="clickMe！"/>
		<input id="btn" />
	</div>

	<div class="div-bor">
		<p>城市</p>
		<ul id="city">
			<li id="bj" >北京</li>
			<li id="hz">杭州</li>
		</ul>
		<p>娱乐</p>
		<ul id="game">
			<li>斗地主</li>
			<li>魔兽</li>
		</ul>
		<input id="addlibtn" type="button" value="点我给上面li标签增加元素"/>
		<br>
		<p>点击下面的按钮交换北京和斗地主标签</p>
		<input id="replace_li" type="button" value="点我交换li标签"/>
	</div>
	
</body>
</html>