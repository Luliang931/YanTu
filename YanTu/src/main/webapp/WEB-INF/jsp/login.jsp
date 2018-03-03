<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>登录</title>
  </head>
  
  <body>
		<form:form modelAttribute="user" action="postform.do" method="post">
			<label>姓名：</label>
			<form:input path="userName"/>
			<label>密码：</label>
			<form:password path="password" showPassword="true"/>
			<label>年龄：</label>
			<form:input path="age"/>
			<label>id：</label>
			<form:textarea path="id" rows="1" clos="10"/>
			<input type="submit" value="提交">
		</form:form>
  </body>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
 <script type="text/javascript">
 </script>
</html>