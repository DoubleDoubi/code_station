<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Knockout</title>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/knockout-2.2.0.js"></script>

<script type="text/javascript">

$(function(){
	var viewModel = {
		firstName:ko.observable(),
		lastName:ko.observable()
	};
	viewModel.fullName = ko.dependentObservable(function () {
	    return this.firstName() + " " + this.lastName();
	}, viewModel);
	ko.applyBindings(viewModel);

})


</script>

</head>
<body>
<h1>这个页面用来练习knockout绑定的</h1>
<p>FirstName:<input data-bind="value:firstName" id="firstName"></p>
<p>LastName:<input data-bind="value:lastName" id="lastName"></p>
<p>FirstName:<span data-bind="text:firstName"></span></p>
<p>LastName:<span data-bind="text:lastName"></span></p>
<p>LastName:<span data-bind="text:fullName"></span></p>

</body>
</html>