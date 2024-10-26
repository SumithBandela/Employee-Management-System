<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Added Successfully: Employee Added!</title>
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container-fluid m-2 p-2">
<div class="bg-dark text-white d-flex justify-content-between p-2">
<h3>
<%
AdminBean ab = (AdminBean) session.getAttribute("abean");
out.println("Page belongs to Admin : "+ab.getfName());
%>
</h3>
<a href="logout" class="text-warning pr-5 pt-2">logout</a>
</div>
<div class="text-danger m-2">
<% out.println("Employee Added successfully....<br>");
%>
</div>
<div class="mt-2">
 <a href="view" class="btn btn-primary">ViewEmployees</a>
</div>
</div>
</body>
</html>