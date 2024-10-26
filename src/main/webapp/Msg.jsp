<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Session Expired</title>
<link rel="icon" href="images/icon.jpeg">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="text-danger m-2 p-2">
<%
String msg = (String)request.getAttribute("msg");
out.println(msg);
%>
</div>
<%@include file="home.html" %>
</body>
</html>