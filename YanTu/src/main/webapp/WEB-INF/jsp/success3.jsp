<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
	<title>成功页面</title>
  </head>
  <body>
	<h1>上传成功！</h1>
	用户名：${user.username }<br>
	图片名：${filename }<br>
	
	 <h3>文件下载</h3>
  	<a href="download.do?filename=${requestScope.user.image.originalFilename}">
		${requestScope.user.image.originalFilename }
	</a>
  </body>
</html>