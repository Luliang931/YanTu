<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Signup</title>
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
<script src="${pageContext.request.contextPath}/static/js/login/jquery-2.1.1.min.js"></script>
<script src="${pageContext.request.contextPath}/static/js/custom/layer-v3.1.1/layer/layer.js"></script>

<!--icons-css-->
<link href="${pageContext.request.contextPath}/static/css/font-awesome.css" rel="stylesheet">
<!--Google Fonts-->
<!-- <link href='http://fonts.useso.com/css?family=Carrois+Gothic' rel='stylesheet' type='text/css'>
<link href='http://fonts.useso.com/css?family=Work+Sans:400,500,600' rel='stylesheet' type='text/css'> -->
<!--//charts-->

<style type="text/css">
	em {color: red}
</style>
</head>
<body>	
<!--inner block start here-->
<div class="signup-page-main">
     <div class="signup-main">  	
    	 <div class="signup-head">
				<h1>注 册</h1>
			</div>
			<div class="signup-block">
				<form:form modelAttribute="user" method="post" action="register.do">
				<table>
					<tr>
						<td align="top"><label><em>* </em>用户名：</label></td>
						<td width="260px">
							<form:input path="username" placeholder="用户名" />
						</td>
						<td> 
							<form:errors path="username" cssStyle="color:red"></form:errors>
						</td>
					</tr>
					<tr>
						<td><label><em>* </em>密&nbsp;&nbsp;&nbsp;&nbsp;码：</label></td>
						<td>					
							<form:password path="password" id="password" placeholder="密码"/>
						</td>
						<td>					
							<form:errors path="password" cssStyle="color:red"></form:errors>
						</td>						
					</tr>
					<tr>
						<td><label><em>* </em>确认密码：</label></td>
						<td>					
							<input type="password" id="passwordconform" placeholder="确认密码"/>
						</td>
					</tr>
					<tr>
						<td><label><em>* </em>手&nbsp;&nbsp;&nbsp;&nbsp;机：</label></td>
						<td>					
							<form:input id="phone" path="phone" class="lock" placeholder="手机号码"/>
						</td>
						<td>					
							<form:errors path="phone" cssStyle="color:red"></form:errors>
						</td>						
					</tr>					
					<tr>
						<td><label>&nbsp;&nbsp;邮&nbsp;&nbsp;&nbsp;&nbsp;箱：</label></td>
						<td>					
							<form:input type="text" path="email" placeholder="邮箱"/>
						</td>
						<td>					
							<form:errors path="email" cssStyle="color:red"></form:errors>
						</td>						
					</tr>
					<tr>
						<td><label><em>* </em>Q&nbsp;&nbsp;&nbsp;&nbsp;Q：</label></td>
						<td>					
							<form:input id="qq" type="text" path="qq" placeholder="qq号码"/>
						</td>
						<td>					
							<form:errors path="qq" cssStyle="color:red"></form:errors>
						</td>						
					</tr>					
					<tr>
						<td><label>&nbsp;&nbsp;微&nbsp;&nbsp;&nbsp;&nbsp;信：</label></td>
						<td>					
							<form:input type="text" path="weixin" placeholder="微信号码"/>
						</td>
						<td>					
							<form:errors path="weixin" cssStyle="color:red"></form:errors>
						</td>						
					</tr>						
					<tr>
						<td><label><em>* </em>报考学校：</label></td>
						<td>					
							<form:input id="university" type="text" path="university" placeholder="报考学校（全称）"/>
						</td>
						<td>					
							<form:errors path="university" cssStyle="color:red"></form:errors>
						</td>						
					</tr>						
					<tr>
						<td><label><em>* </em>报考学院：</label></td>
						<td>					
							<form:select id="toSchool" path="toSchool">
								<form:option value="">...请选择...</form:option>
								<form:option value="计算机学院">计算机学院</form:option>
								<form:option value="经管学院">经管学院</form:option>
								<form:option value="自动化学院">自动化学院</form:option>
								<form:option value="通信学院">通信学院</form:option>
								<form:option value="其他学院">其他学院</form:option>
							</form:select>
						</td>
						<td>					
							<form:errors path="toSchool" cssStyle="color:red"></form:errors>
						</td>						
					</tr>

											
					<tr>
						<td><label><em>* </em>性&nbsp;&nbsp;&nbsp;&nbsp;别：</label></td>
						<td>					
							<form:radiobutton id ="sex1"  path="sex" value="男"/>男&nbsp;&nbsp;&nbsp;&nbsp;   
                			<form:radiobutton id ="sex2" path="sex" value="女"/>女 
						</td>
						<td>					
							<form:errors path="sex" cssStyle="color:red"></form:errors>
						</td>						
					</tr>
					<br>
					<br>	
					<tr>
						<td>
							<form:checkbox id="item" path="item"/>					
							<label><span style="font-size: 1px">我同意研兔网所有条款！</span></label>
						</td>
						<td>					
							<form:errors path="item" cssStyle="color:red"></form:errors>
						</td>						
					</tr>						
																					
				</table>
				<br>	
					<input id="submit" type="submit" value="注册"/>														
				</form:form>
				<div class="sign-down">
				<h5>已经有账号? <a href="loginForm.do"> 点这里.</a></h5>
				  <h5><a href="index.jsp">返回主页</a></h5>
				</div>
			</div>
    </div>
</div>
<!--inner block end here-->
<!--copy rights start here-->
<div class="copyrights">
	 <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="http://www.baidu.com">研兔网</a></p>
</div>	
<!--COPY rights end here-->


<!--scrolling js-->
		<script src="${pageContext.request.contextPath}/static/js/login/jquery.nicescroll.js"></script>
		<script src="${pageContext.request.contextPath}/static/js/login/scripts.js"></script>
		<!--//scrolling js-->
<script src="${pageContext.request.contextPath}/static/js/login/bootstrap.js"> </script>
<!-- mother grid end here-->
</body>
<script type="text/javascript">

	$('#passwordconform').on('blur', function(){
		var p1 = $("#password").val();
		var p2 = $("#passwordconform").val();
		if (p1 != p2) {
			layer.msg('两次输入的密码不一致，请重新输入！');
		}
	    
	  });
	$('#submit').on('click', function(){
		var item = $("#item").val();
		var phone = $.trim($('#phone').val());
		var qq = $.trim($('#qq').val());
		var university = $.trim($('#university').val());
		var toSchool = $.trim($('#toSchool').val());
		
		//手机号正则
		var phoneReg = /(^1\d{10}$)/;
		
		if (phone == "") {
			layer.msg('请填写手机号码！');
			return false;
		}
		if (!phoneReg.test(phone)) {
			layer.msg('请输入有效的手机号码！');
			return false;
		}

		if (qq == "") {
			layer.msg('请填写QQ号码！');
			return false;
		}
		if (university == "") {
			layer.msg('请填写报考学校！');
			return false;
		}
		if (toSchool == "") {
			layer.msg('请填写报考学院！');
			return false;
		}
		if (item != "true") {
			layer.msg('请选择,我同意研兔网所有条款！');
			return false;
		}
	  });
</script>
</html>
