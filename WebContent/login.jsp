<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
	session.removeAttribute("userInfo");
%>
<!DOCTYPE html>
<html lang="en" class="no-js">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
<meta name="viewport" content="width=device-width, initial-scale=1"> 
<title>药品库存管理系统</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/loginstyle/css/normalize.css" />
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/loginstyle/css/demo.css" />
<!--必要样式-->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/loginstyle/css/component.css" />
<!--[if IE]>
<script src="js/html5.js"></script>
<![endif]-->
<style type="text/css">
input {
    background-color: transparent !important;
}
input:-webkit-autofill {
    -webkit-transition: background-color 10000s cubic-bezier(1, -100, 1, -100) 0s;
}


</style>
<script type="text/javascript">
	function check(){
		var logincode = document.getElementById("logincode").value;
		var password = document.getElementById("password").value;
		var error = document.getElementById("error");
		error.innerHTML="";
		if(logincode==""){
			error.innerHTML="用户名不能为空！";
			return false;
		}
		if(password==""){
			error.innerHTML="密码不能为空！";
			return false;
		}
		document.getElementById("adminlogin").submit();		
	}
</script>
</head>
<body>
		<div class="container demo-1">
			<div class="content">
				<div id="large-header" class="large-header">
					<canvas id="demo-canvas"></canvas>
					<div class="logo_box">
						<h3>欢迎你</h3>
						<form id="adminlogin" name="adminlogin" action="${pageContext.request.contextPath}/user_login.do"  method="post">
							<div class="input_outer">
								<span class="u_user"></span>
								<input name="logincode" id="logincode" value="" class="text"  style="color: #FFFFFF !important" type="text" placeholder="请输入账户">
							</div>
							<div class="input_outer">
								<span class="us_uer"></span>
								<input name="password" id="password" value="" class="text" style="color: #FFFFFF !important; position:absolute; z-index:100;"value="" type="password" placeholder="请输入密码">
							</div>
							<div>
								<font id="error" color="red">${error}&nbsp;</font>
							</div>
							<div class="mb2"><a class="act-but submit" href="javascript:;" onclick="javascript:check();return false;" style="color: #FFFFFF">登录</a></div>
						</form>
					</div>
				</div>
			</div>
		</div><!-- /container -->
		<script src="${pageContext.request.contextPath}/loginstyle/js/TweenLite.min.js"></script>
		<script src="${pageContext.request.contextPath}/loginstyle/js/EasePack.min.js"></script>
		<script src="${pageContext.request.contextPath}/loginstyle/js/rAF.js"></script>
		<script src="${pageContext.request.contextPath}/loginstyle/js/demo-1.js"></script>
		
	</body>
</html>