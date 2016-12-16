<%
    String menu = (String)request.getAttribute("MENU_INDEX");
%>
<link rel="stylesheet" type="text/css" href="css/iconfont.css">
<style>

body,ul,li{
	margin:0;
	padding:0;
	list-style:none;
}
input{
	outline:none;
}
img:hover{
	cursor:pointer;
}
.current{

}
.others{

}
#header{
height:24px;
margin:0;
padding:0
}
#header li{
	float:right;
	font-size:16px;
	margin-left:25px;
	line-height:24px;
}
a{
	text-decoration:none;
}
a:hover,a:visited,a:link,a:active{
	color:black;
}
#container{
	margin:0 auto;
	width:80%;
}
#title_link2{
	height:76px;
	float:left;
	margin-left:80px
}
#title_link2 ul li{
	margin-left:30px;
	float:left;
	line-height:76px;
	font-size:24px;
}
#title_link2 ul li a:hover{
	color:#f90;
}
#searchDiv{
	height:30px;
	float:right;
	width:auto;
	padding:23px;
}
.login_main{}
#foot{
	margin:0 auto;
	background:yellow;
	width:50%;
	height:100%;
}
#foot li{
	float:left;
	width:25%;
	text-align:center;
	line-height:4em
} 

.math:hover,.smart:hover{
	opacity:0.6
}

</style>
<div style="position:fixed;background:white;margin:auto;left:0;right:0;z-index:999">
<div id="loadingimg" style="position:fixed;height:100%;width:100%;display:none">
<img src="img/loading.gif" style="position:absolute;top:40%;left:50%"/>
</div>
<div style="width:100%;height:100px;box-shadow: 0 5px 5px rgba(0, 0, 0, 0.08)">
<div style="height:24px;width:80%;margin:0 auto;">
<ul id="header">
<li id="regist_title" <%="regist".equals(menu)?" class=\"current\"":" class=\"others\""%>>
<a href="regist.jsp">REGIST</a>
</li>
<li id="login_title" <%="login".equals(menu)?" class=\"current\"":" class=\"others\""%>>
<a id="login_title_link" href="login.jsp">LOGIN</a>
</li>
<li id="exit_title">
<a href="UserLogout">LOGOUT</a>
</li>
</ul>
</div>
<div style="width:80%;height:76px;margin:0 auto;">

<div style="height:76px;width:23%;float:left">
<img alt="logo" src="img/logo.png" style="height:100%">
</div>

<div id="title_link2">
<ul>
<li><a href="UserPractice">Practice</a></li>
<li><a href="#">Exam</a></li>
<li><a href="#">Collection</a></li>
<li><a href="#">Download</a></li>
</ul>
</div>

<div id="searchDiv">
<div style="height:30px;width:240px;box-shadow:0px 0px 3px black;border-radius:15px;text-align:center;line-height:28px">
<input type="text" id="searchBt" style="height:24px;width:186px;border:none;" />
<a href="#"><i style="height:24px;width:24px" class="iconfont icon-search"></i>
</a>
</div>
</div>

</div>
</div>
</div>
<div style="padding-bottom:100px"></div>
<script src="jquery/jquery-2.1.3.js"></script>
<script src="jquery/jquery.transit.js"></script>
<script>
(function logstatus(){
	console.log("${status.toString()}");
})();
(function login_status(){
	if(('${status.type}'==('login')||('${status.type}'=='userinfo')||('${status.type}'=='practice'))&&('${status.value}'=='succeed'))
	{
	$('#login_title_link').html('${status.USERNAME}');
	$('#login_title_link').attr('href','UserInfo');
	$('#regist_title').hide();
	$('#exit_title').show();
	}
	else{
	$('#exit_title').hide();
	}
})();





</script>
