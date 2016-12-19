<%@page import="com.beans.STATUS"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>reset</title>

<script src="jquery/jquery-2.1.3.js"></script>
<script>
$('#confirm').click(function(){
	$.ajax({
		url:'ForgetChange',
		dateType:'json',
		type:'post',
		data:{
			username:$('#username').val(),
			password:$('#password').val()
		},
		success:function(info){
			alert('change ok!');
			window.location.href='login.jsp';
		}
	});
});
</script>
</head>
<body>
<div id="container">
	<header>
		<h1>Reset</h1>
	</header>
		<div>
			username:<input type="text" id="username" disabled>
			<br>
			password:<input type="password" id="password">
			<br>
			confirm password:<input type="password" id="confirm_password">
			<br>
			<input type="button" value="confirm" id="confirm">
		</div>
	
</div>



</body>
</html>
