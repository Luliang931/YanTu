<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>首页</title>
  </head>
  <body>
	<h1>登录成功！</h1>
	登录名：${user.loginname }<br>
	用户名：${user.username }<br>
	密码：${user.password }<br>
	年龄：${user.age }<br>
	邮箱：${user.email}<br>
	生日：${user.birthday }<br>
	电话：${user.phone }<br>
  </body>
</html>