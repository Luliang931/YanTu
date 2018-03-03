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
	描述：${description }<br>
	文件名：${filename }<br>
	文件大小：${size }<br>
	上传路径：${path }<br>
  </body>
</html>