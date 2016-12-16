<%@page import="com.beans.STATUS"%>
<%@taglib prefix="s" uri="/struts-tags" %>

<%request.setAttribute("MENU_INDEX", "userinfo");%>
<%@include file="header.jsp"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="container">
	<header>
		<h1>UserInfomation</h1>
	</header>
	${status.toString()}
</div>

</body>
</html>