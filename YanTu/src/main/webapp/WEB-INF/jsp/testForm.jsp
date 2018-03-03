<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>登录</title>
  </head>
  
  <body>
  <h3>测试数据格式转换</h3>
		<form  action="testformat.do" method="post">
			<label>日期类型：</label>
			<input type="text" id="birthday" name="birthday">
			<label>整数类型：</label>
			<input type="text" id="total" name="total">
			<label>百分数类型：</label>
			<input type="text" id="discount" name="discount">
			<label>货币类型：</label>
			<input type="text" id="money" name="money">
			<input type="submit" value="提交">
		</form>
  </body>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
 <script type="text/javascript">
 </script>
</html>