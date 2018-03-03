<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>登录</title>
  </head>
  
  <body>
  <h3>form:chechbox测试</h3>
		<form:form modelAttribute="testCheck" action="testcheck1.do" method="post">
			<label>选择课程：</label>
			<form:checkboxes items="${coursesMap}" path="courses"/>
			<input type="submit" value="提交">
		</form:form>
  </body>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
 <script type="text/javascript">
 </script>
</html>