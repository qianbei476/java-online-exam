<%@page import="com.beans.STATUS"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%request.setAttribute("MENU_INDEX", "main");%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<title>main</title>


<script>
function logUser(){
	console.log("${status.toString()}");
}
	
	

</script>
<style>

</style>
</head>
<body onload="logUser()">


<div id="container" class="login_main">
	<div style="height:380px;width:100%">
	<div class="english first_title" style="height:380px;width:47%;float:left;overflow:hidden">
	<img class="first_title_img" src="img/english.jpg" style="height:100%;" >
	</div>
	<div style="width:52%;height:370px;float:right">
	<div class="math" style="height:240px;overflow:hidden">
	<img src="img/a.jpg" style="width:100%">
	</div>
	<div class="smart" style="height:140px;overflow:hidden">
	<img src="img/b.jpg" style="width:100%">
	</div>
	</div>
	</div>
	
	<div style="width:100%;height:240px;margin-top:10px;">
	
	<div class="first_title" style="width:23%;height:240px;float:left;overflow:hidden;position:relative;">
	<img class="first_title_img" src="img/1.jpg" style="height:110%;margin-left:-20px" >
	<div class="first_title_info" style="height:240px;width:100%;position:absolute;bottom:-200px;left:0">
	<div style="height:100%;width:100%;background:green;opacity:0.2"></div>
	<div style="height:100%;width:100%;position:absolute;top:0;left:0;color:white;text-align:center;line-height:40px;font-weight:bold">CLASSROOM</div>
	</div>
	</div>
	
	
	<div class="first_title" style="width:23%;height:240px;float:left;margin-left:1%;overflow:hidden;position:relative">
	<img class="first_title_img" src="img/2.jpg" style="height:110%;margin-left:-50px" >
	<div class="first_title_info" style="height:240px;width:100%;position:absolute;bottom:-200px;left:0">
	<div style="height:100%;width:100%;background:blue;opacity:0.2"></div>
	<div style="height:100%;width:100%;position:absolute;top:0;left:0;color:white;text-align:center;line-height:40px;font-weight:bold">OFFICE</div>
	</div>
	</div>
	
	<div class="first_title" style="width:25%;height:240px;float:left;margin-left:1%;overflow:hidden;position:relative">
	<img class="first_title_img" src="img/3.jpg" style="width:100%;">
	<div class="first_title_info" style="height:240px;width:100%;position:absolute;bottom:-200px;left:0">
	<div style="height:100%;width:100%;background:yellow;opacity:0.2"></div>
	<div style="height:100%;width:100%;position:absolute;top:0;left:0;color:white;text-align:center;line-height:40px;font-weight:bold">SHOPPING</div>
	</div>
	</div>
	
	
	<div class="first_title" style="width:26%;height:240px;float:right;margin-left:1%;overflow:hidden;position:relative">
	<img class="first_title_img" src="img/4.jpg" style="height:110%;margin-left:-50px">
	<div class="first_title_info" style="height:240px;width:100%;position:absolute;bottom:-200px;left:0">
	<div style="height:100%;width:100%;background:red;opacity:0.2"></div>
	<div style="height:100%;width:100%;position:absolute;top:0;left:0;color:white;text-align:center;line-height:40px;font-weight:bold">PARTY</div>
	</div>
	</div>
	
	</div>
	
	<div style="width:100%;height:100px;background:green;margin-top:15px">PROMOTION</div>
	<div id="englishdiv" style="height:100%;width:100%;background:yellow;">
	ENGLISH
	</div>
	<div id="mathdiv" style="height:100%;width:100%;background:blue;">
	MATH
	</div>
	<div id="smartdiv" style="height:100%;width:100%;background:purple;">
	SMART
	</div>
	
	<div style="height:50%;width:2%;background:green;position:fixed;right:5%;top:25%">guider</div>
	
	<footer style="width:100%;height:15%">
	<div style="height:60%;width:100%;background:green">
	<ul id="foot">
	<li>a</li>
	<li>b</li>
	<li>c</li>
	<li>d</li>
	</ul>
	</div>
	<div style="height:40%;width:100%;background:blue;text-align:center;line-height:1.5em">
	Copyright©2008-2015
	<br>
	QQ:584854762 QQ:584854762 ICP15021234103
	</div>
	
	</footer>
</div>
<script>
$('.english').click(function(){
	$('html body').animate({
		scrollTop:$('#englishdiv').offset().top-100
	},'slow');
});
$('.math').click(function(){
	$('html body').animate({
		scrollTop:$('#mathdiv').offset().top-100
	},'slow');
});
$('.smart').click(function(){
	$('html body').animate({
		scrollTop:$('#smartdiv').offset().top-100
	},'slow');
});

$('.imgover').mouseover(function(){
	$(this).css('opacity',0.1);
});
$('.imgover').mouseout(function(){
	$(this).css('opacity',0.6);
});

$('.first_title').mouseenter(function(){
	$(this).find('.first_title_img').transition({
		scale:1.1
	},300);
	
	$(this).find('.first_title_img').css({
		'-webkit-filter':'blur(3px)',
		'filter':'blur(1px)'
	});
	
	$(this).find('.first_title_info').animate({
		bottom:0
	},300);
	
});

$('.first_title').mouseleave(function(){
	$(this).find('.first_title_img').transition({
		scale:1
	},300);
	
	$(this).find('.first_title_img').css({
		'-webkit-filter':'blur(0px)',
		'filter':'blur(0px)'
	});
	
	$(this).find('.first_title_info').animate({
		bottom:-200
	},300);
});


</script>
</body>
</html>