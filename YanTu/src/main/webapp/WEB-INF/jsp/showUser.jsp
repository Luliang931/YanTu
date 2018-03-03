<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>测试</title>
  </head>
  
  <body>
  	id: ${requestScope.user.id }
  	<br>
    userName: ${sessionScope.user.userName}
    <br>
    password: ${sessionScope.user.password}
    <br>
    age: ${sessionScope.user.age}
    
    <h3>四大作用域：page，request，session，applicationScope</h3>
  </body>
</html>
