<%@page import="com.beans.STATUS"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%request.setAttribute("MENU_INDEX", "login");%>
<%@include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login</title>
</head>
<script src="jquery/jquery-2.1.3.js"></script>
<script type="text/javascript">

function regist(){
	window.location.href='regist.jsp';
};

function forget(){
	window.location.href='forget.jsp';
};

(function login_status(){
	if(('${status.type}'=='login')&&('${status.value}'=='succeed'))
	{
	$('#login_title a').html('${status.USERNAME}');
	}
	else{
	$('#login_title a').html('LOGIN');
	}
})();
</script>
<body>
<div id="container">
	<header>
		<h1>Login</h1>
	</header>
<div>
username:<input type="text" id="username" name="username">
<br>
password:<input type="password" id="password" name="password">
<br>
<input type="submit" value="login" id="login">
<input type="button" value="regist" onclick="regist()">
<input type="button" value="forget" onclick="forget()">
</div>

</div>



</body>
<script>
$('#login').click(function(){
	
	$.ajax({
		url:'UserLogin',
		dateType:'json',
		type:'post',
		data:{
			username:$('#username').val(),
			password:$('#password').val()
		},
		beforeSend:function(){
			$('#loadingimg').css('display','block');
		},
		success:function(info){
		//	alert('login succeed!'+info.status.USERNAME);
		$('#loadingimg').css('display','none');
		if(info.status.value='succeed'){
			window.location.href='UserLoginLink';
		}
		else{
			alert('username or password is wrong.');
			}
		//	window.location.href='main.jsp';
		}
	});
});
</script>
</html>