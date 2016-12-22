<%@page import="com.beans.STATUS"%>
<%@taglib prefix="s" uri="/struts-tags" %>
<%request.setAttribute("MENU_INDEX", "main");%>
<%@include file="header.jsp"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="utf-8">
<title>main</title>


<style>

</style>
</head>
<body>


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
	
	<div class="first_title2" style="width:23%;height:240px;float:left;overflow:hidden;position:relative;">
	<img class="first_title_img" src="img/1.jpg" style="height:110%;margin-left:-20px" >
	<div class="first_title_info" style="height:240px;width:100%;position:absolute;bottom:-200px;left:0">
	<div style="height:100%;width:100%;background:black;opacity:0.6"></div>
	<div style="height:100%;width:100%;position:absolute;top:0;left:0;color:white;text-align:center;line-height:40px;font-weight:bold">CLASSROOM
	<p>this is for classroom English.</p>
	</div>
	</div>
	</div>
	
	
	<div class="first_title2" style="width:23%;height:240px;float:left;margin-left:1%;overflow:hidden;position:relative">
	<img class="first_title_img" src="img/2.jpg" style="height:110%;margin-left:-50px" >
	<div class="first_title_info" style="height:240px;width:100%;position:absolute;bottom:-200px;left:0">
	<div style="height:100%;width:100%;background:black;opacity:0.6"></div>
	<div style="height:100%;width:100%;position:absolute;top:0;left:0;color:white;text-align:center;line-height:40px;font-weight:bold">OFFICE
	<p>this is for office English.</p>
	</div>
	</div>
	</div>
	
	<div class="first_title2" style="width:25%;height:240px;float:left;margin-left:1%;overflow:hidden;position:relative">
	<img class="first_title_img" src="img/3.jpg" style="width:100%;">
	<div class="first_title_info" style="height:240px;width:100%;position:absolute;bottom:-200px;left:0">
	<div style="height:100%;width:100%;background:black;opacity:0.6"></div>
	<div style="height:100%;width:100%;position:absolute;top:0;left:0;color:white;text-align:center;line-height:40px;font-weight:bold">SHOPPING
	<p>this is for shopping English.</p>
	</div>
	</div>
	</div>
	
	
	<div class="first_title2" style="width:26%;height:240px;float:right;margin-left:1%;overflow:hidden;position:relative">
	<img class="first_title_img" src="img/4.jpg" style="height:110%;margin-left:-50px">
	<div class="first_title_info" style="height:240px;width:100%;position:absolute;bottom:-200px;left:0">
	<div style="height:100%;width:100%;background:black;opacity:0.6"></div>
	<div style="height:100%;width:100%;position:absolute;top:0;left:0;color:white;text-align:center;line-height:40px;font-weight:bold">PARTY
	<p>this is for party English.</p>
	</div>
	</div>
	</div>
	
	</div>
	
	
	<div style="width:100%;height:100px;margin-top:15px;line-height:100px;text-align:center;margin-bottom:15px">there is for advertisement or promotion.</div>
	
	<div id="englishdiv" style="height:100%;width:100%;margin-bottom:15px;border-top:10px dotted skyblue;overflow:hidden">
	<h1 style="color:skyblue;margin-left:1em">For Child</h1>
	<ul id="child_ul" style="position:relative">
	<li>noun</li>
	<li>sentence</li>
	<li>article</li>
	<li>extension</li>
	<div id="child_scroll" style="height:2px;width:25%;background:black;position:absolute;left:0;top:28px"></div>
	</ul>
	<div  id="child_tab_menu" style="height:100%;width:100%;overflow:hidden">
	
	<div class="li_menu" style="width:100%;height:100%;">
	
	<div style="width:100%;height:40%;text-align:center;line-height:20em;margin-top:1%">
	
	<div style="height:100%;width:33%;float:left;margin-right:1%;margin-left:5px;border:1px solid #C1C1C1;">
	
	<div style="height:48%;width:98%;margin:1%;position:relative;overflow:hidden">
	<div id="child_imgs" style="height:100%;width:200%;position:absolute;top:0;">
	<div class="child_img" style="float:left;width:50%;height:100%"><img src="img/child_img1.jpg" style="height:100%"></div>
	<div class="child_img" style="float:left;width:50%;height:100%"><img src="img/child_img2.jpg" style="height:100%"></div>
	</div>
	</div>
	<ul id="child_A">
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	</ul>
	
	</div>
	
	<div style="height:100%;width:32%;float:left;margin-right:1%">
	
	<ul id="child_B">
	<li style="height:20%;line-height:2.5em;font-size:24px;font-weight:bolder;text-align:center;list-style:none;width:100%;margin:0;color:#444444">titleB</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	</ul>
	
	</div>
	<div style="height:100%;width:32%;float:left;">
	
	<ul id="child_C">
	<li style="height:20%;line-height:2.5em;font-size:24px;font-weight:bolder;text-align:center;list-style:none;width:100%;margin:0;color:#444444">titleC</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	</ul>
	
	</div>
	</div>
	
	<div style="width:100%;height:42%;text-align:center;line-height:20em;margin-top:1%">
	
	<div style="height:100%;width:24%;float:left;margin-left:5px;margin-right:1%">
	
	<ul id="child_D">
	<li style="height:20%;line-height:2.5em;font-size:24px;font-weight:bolder;text-align:center;list-style:none;width:100%;margin:0;color:#444444">
	titleD</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	</ul>
	
	</div>
	<div style="height:100%;width:24%;float:left;margin-right:1%">
	
	<ul id="child_D">
	<li style="height:20%;line-height:2.5em;font-size:24px;font-weight:bolder;text-align:center;list-style:none;width:100%;margin:0;color:#444444">
	titleD</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	</ul>
	
	</div>
	<div style="height:100%;width:24%;float:left;margin-right:1%">
	
	<ul id="child_D">
	<li style="height:20%;line-height:2.5em;font-size:24px;font-weight:bolder;text-align:center;list-style:none;width:100%;margin:0;color:#444444">
	titleD</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	</ul>
	
	</div>
	<div style="height:100%;width:24%;float:left">
	
	<ul id="child_D">
	<li style="height:20%;line-height:2.5em;font-size:24px;font-weight:bolder;text-align:center;list-style:none;width:100%;margin:0;color:#444444">
	titleD</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	<li>text</li>
	</ul>
	
	</div>
	</div>
	
	</div>
	<div class="li_menu" style="width:100%;height:100%;">
	2
	</div>
	<div class="li_menu" style="width:100%;height:100%;">
	3
	</div>
	<div class="li_menu" style="width:100%;height:100%;">
	4
	</div>
	</div>
	</div>
	
	<div id="mathdiv" style="height:100%;width:100%;margin-bottom:15px;border-top:10px dotted skyblue;">
	<h1 style="color:skyblue;margin-left:1em">For Young</h1>
	<ul id="young_ul" style="position:relative">
	<li>noun</li>
	<li>sentence</li>
	<li>article</li>
	<li>extension</li>
	<div id="young_scroll" style="height:2px;width:25%;background:black;position:absolute;left:0;top:28px"></div>
	</ul>
	<div  id="young_tab_menu" style="height:100%;width:100%;overflow:hidden">
	
	<div class="li_menu" style="width:100%;height:100%;">
	
	<div style="width:100%;height:40%;text-align:center;line-height:20em;margin-top:1%">
	<div style="height:100%;width:33%;float:left;margin-right:1%;">A
	</div>
	<div style="height:100%;width:33%;float:left">A
	</div>
	<div style="height:100%;width:33%;float:left">A
	</div>
	</div>
	
	<div style="width:100%;height:42%;text-align:center;line-height:20em;margin-top:1%">
	
	<div style="height:100%;width:25%;float:left">
	A
	</div>
	<div style="height:100%;width:25%;float:left">A
	</div>
	<div style="height:100%;width:25%;float:left">A
	</div>
	<div style="height:100%;width:25%;float:left">A
	</div>
	</div>
	
	</div>
	<div class="li_menu" style="width:100%;height:100%;">
	2
	</div>
	<div class="li_menu" style="width:100%;height:100%;">
	3
	</div>
	<div class="li_menu" style="width:100%;height:100%;">
	4
	</div>
	</div>
	</div>
	
	<div id="smartdiv" style="height:100%;width:100%;border:1px solid black;margin-bottom:15px">
	SMART
	</div>
	
	<div style="height:50%;width:2%;background:#FFBBFF;position:fixed;right:5%;top:25%">guider</div>
	
	<footer style="width:100%;height:15%">
	<div style="height:55%;width:100%;border:1px solid black;margin-bottom:15px">
	<ul id="foot">
	<li>a</li>
	<li>b</li>
	<li>c</li>
	<li>d</li>
	</ul>
	</div>
	<div style="height:45%;width:100%;text-align:center;line-height:1.8em;border:1px solid black;">
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
	},200);
	
	
	$(this).find('.first_title_info').animate({
		bottom:0
	},300);
	
});

$('.first_title').mouseleave(function(){
	$(this).find('.first_title_img').transition({
		scale:1
	},100);
		
	$(this).find('.first_title_info').animate({
		bottom:-200
	},200);
});

$('.first_title2').mouseenter(function(){
	
	$(this).find('.first_title_img').css({
		'-webkit-filter':'blur(3px)',
		'filter':'blur(1px)'
	});
	
	$(this).find('.first_title_info').animate({
		bottom:0
	},200);
	
});

$('.first_title2').mouseleave(function(){
	
	$(this).find('.first_title_img').css({
		'-webkit-filter':'blur(0px)',
		'filter':'blur(0px)'
	});
	
	$(this).find('.first_title_info').animate({
		bottom:-200
	},100);
});

var temp;
var child_left = parseInt($('#child_imgs').css('left'));
var timeTap = setInterval(function(){
	$('#child_imgs').animate({
		left:-child_left-$('#child_imgs .child_img').width()
	},500);
	child_left = parseInt($('#child_imgs').css('left'));
},1500);

$('#child_ul li').click(function(){
	var li_index = $(this).index();
	
	$('#child_scroll').animate({
		left:$(document.body).width()*0.8*0.25*li_index
	},200);
	if(temp!=li_index){
	$('#child_tab_menu .li_menu').hide();
	$('#child_tab_menu .li_menu:eq('+li_index+')').fadeIn();
	temp = li_index;}
});

$('#young_ul li').click(function(){
	var li_index = $(this).index();
	$('#young_scroll').animate({
		left:$(document.body).width()*0.8*0.25*li_index
	},200);
	if(temp!=li_index){
	$('#young_tab_menu .li_menu').hide();
	$('#young_tab_menu .li_menu:eq('+li_index+')').fadeIn();
	temp = li_index;}
});


</script>
</body>
</html>
