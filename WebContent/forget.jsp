<%@page import="com.beans.STATUS"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>forget</title>
<script src="jquery/jquery-2.1.3.js"></script>
<script>
$('#key_pic').click(function(){
	$.ajax({
		url:'SetKeyNumber',
		dateType:'json',
		type:'post',
		data:{
			email:$('#email').val()
		},
		success:function(info){
			$('#key_pic').val(8888);
		}
	});
});

#('#confirm_email').click(function(){
	$.ajax({
		url:'ConfirmForget',
		dateType:'json',
		type:'post',
		data:{
			email:$('#email').val(),
			key_number:$('#key_number').val()		
		},
		
		success:function(info){
			alert('change ok!');
			window.location.href='reset.html';
		}
	});
});
</script>
</head>
<body>
<div id="container">
	<header>
		<h1>Forget</h1>
	</header>
	<div>
		email:<input type="text" id="email">
		<br>
		Verification:<input type="text" id="key_number">
		<input type="button" id="key_pic" value="7777" disabled>
		<input type="button" id="confirm_email">
	</div>
</div>
</body>
</html>