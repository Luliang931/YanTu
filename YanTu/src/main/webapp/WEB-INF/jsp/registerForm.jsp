<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>注册</title>
	<meta content="text/html;charset=UTF-8" http-equiv="ContentType">
  </head>
  
  <body>
  <h3>1.测试国际化,基于session的国际化<br>
  		2.测试JSR303实现的Hibernate Validate 基于domain注解的验证框架</h3>
  		<a href="registerForm.do?request_locale=zh_CN">中文</a> | <a href="registerForm.do?request_locale=en_US">英文</a>
  		<br>
		<form:form modelAttribute="user" action="login.do" method="post">
			<spring:message code="loginname"></spring:message><!-- 国际化显示 -->
			<form:input path="loginname"/>
			<form:errors path="loginname" cssStyle="color:red"></form:errors><br><!-- 验证错误信息显示标签 -->
			<spring:message code="password"></spring:message>
			<form:input path="password"/>
			<form:errors path="password" cssStyle="color:red"></form:errors><br>
			<spring:message code="username"></spring:message>
			<form:input path="username"/>
			<form:errors path="username" cssStyle="color:red"></form:errors><br>			
			<label>年龄：</label>
			<form:input path="age"/>
			<form:errors path="age" cssStyle="color:red"></form:errors><br>			
			<label>邮箱：</label>
			<form:input path="email"/>
			<form:errors path="email" cssStyle="color:red"></form:errors><br>			
			<label>生日：</label>
			<form:input path="birthday" placeholder="yyyy-MM-dd"/>
			<form:errors path="birthday" cssStyle="color:red"></form:errors><br>
			<label>电话：</label>
			<form:input path="phone"/>
			<form:errors path="phone" cssStyle="color:red"></form:errors><br>
						
			<input type="submit" value="<spring:message code="submit"></spring:message>">
		</form:form>
  </body>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
 <script type="text/javascript">
 </script>
</html>