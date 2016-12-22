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
function LoginLoading(){
	$('#loadingimg').css('display','block');
}
</script>
<body>
<div id="container">
	<header>
		<h1>Login</h1>
	</header>
<form action="UserLogin" method="post" onsubmit="LoginLoading()">
<div>
username:<input type="text" id="username" name="username">
<br>
password:<input type="password" id="password" name="password">
<br>
<input type="submit" value="login">
<a href="regist.jsp"><input type="button" value="regist"></a>
<a href="forget.jsp"><input type="button" value="forget"></a>
</div>
</form>

</div>



</body>
<script>

	//	beforeSend:function(){
	//		$('#loadingimg').css('display','block');
	//	},

</script>
</html>
