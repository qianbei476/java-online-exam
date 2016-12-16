<%@page import="com.beans.STATUS"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%request.setAttribute("MENU_INDEX", "regist");%>
<%@include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>regist</title>
<script src="jquery/jquery-2.1.3.js"></script>

</head>
<style>
body{
	margin:0;
	padding:0;
}
</style>
<body>


<div id="container">
	<header>
		<h1>Login</h1>
	</header>
		<div>
			username:<input type="text" id="username">
			<br>
			password:<input type="password" id="password">
			<br>
			confirm:<input type="password" id="password_confirm">
			<br>
			email:<input type="text" id="email">
			<br>
			<input type="button" id="regist" value="regist">
		</div>
</div>
</body>
<script>
$('#regist').click(function(){
	$.ajax({
		url:'UserRegist',
		dateType:'json',
		type:'post',
		data:{
			username:$('#username').val(),
			password:$('#password').val(),
			email:$('#email').val()
		},
		beforeSend:function(){
			$('#loadingimg').css('display','block');
		},
		success:function(info){
			$('#loadingimg').css('display','none');
			alert('regist succeed!');
			window.location.href='login.jsp';
		}
	});
});
</script>
</html>