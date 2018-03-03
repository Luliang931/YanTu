<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>登  录</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Shoppy Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<link href="${pageContext.request.contextPath}/static/css/bootstrap.css" rel="stylesheet" type="text/css" media="all">
<!-- Custom Theme files -->
<link href="${pageContext.request.contextPath}/static/css/signup/style.css" rel="stylesheet" type="text/css" media="all"/>
<!--js-->
<script src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script> 
<!--icons-css-->
<link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet"> 
<!--Google Fonts-->
<!-- <link href='http://fonts.useso.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'> -->
<!--static chart-->
</head>
<body>	
<div class="login-page">
    <div class="login-main">  	
    	 <div class="login-head">
				<h1>登录</h1>
			</div>
			<div class="login-block">
				<form method="post" action="login.do">
					<div><font color="red">${message }</font></div>
					<input type="text" name="username" placeholder="用户名" required="">
					<input type="password" name="password" class="lock" placeholder="密码">
					<div class="forgot-top-grids">
<!-- 						<div class="forgot-grid">
							<ul>
								<li>
									<input type="checkbox" id="brand1" value="">
									<label for="brand1"><span></span>记住密码</label>
								</li>
							</ul>
						</div> -->
<!-- 						<div class="forgot">
							<a href="#">忘记密码?</a>
						</div> -->
						<div class="clearfix"> </div>
					</div>
					<input type="submit" name="Sign In" value="登录">	
					<h3>没有账号?<a href="registerForm.do"> 请注册吧</a></h3>				
					<!-- <h2>or login with</h2>
					<div class="login-icons">
						<ul>
							<li><a href="#" class="facebook"><i class="fa fa-facebook"></i></a></li>
							<li><a href="#" class="twitter"><i class="fa fa-twitter"></i></a></li>
							<li><a href="#" class="google"><i class="fa fa-google-plus"></i></a></li>						
						</ul>
					</div> -->
				</form>
				<h5><a href="index.jsp">返回主页</a></h5>
			</div>
      </div>
</div>
<!--inner block end here-->
<!--copy rights start here-->
<div class="copyrights">
	 <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.baidu.com/">研兔网</a></p>
</div>	
<!--COPY rights end here-->

<!--scrolling js-->
		<script src="${pageContext.request.contextPath}/static/js/login/jquery.nicescroll.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/login/scripts.js"></script>
		<!--//scrolling js-->
<script src="${pageContext.request.contextPath}/static/js/login/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
</html>
