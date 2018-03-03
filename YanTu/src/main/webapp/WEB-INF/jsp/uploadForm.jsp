<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>文件上传</title>
	<meta content="text/html;charset=UTF-8" http-equiv="ContentType">
  </head>
  <body>
  <h3>文件上传</h3>
  	<form action="upload.do" method="post" enctype="multipart/form-data">
  		<label>文件描述：</label>
  		<input type="text" name="description">
  		<br>
  		<label>请选择文件：</label>
  		<input type="file" name="file">
  		<br>
  		<input type="submit" value="上传">
  	</form>
  	
  	  	<hr>

  </body>
 <script type="text/javascript" src="${pageContext.request.contextPath}/static/js/jquery-3.1.1.js"></script>
 <script type="text/javascript">
 </script>
</html>