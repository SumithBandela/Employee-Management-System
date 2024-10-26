<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Deleted Successfully: Employee Deleted!</title>
<link rel="icon" href="images/icon.jpeg">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container-fluid mt-2">
<div class="bg-dark text-white d-flex justify-content-between p-2">
<h3>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
out.println("Page belongs to : "+ab.getfName());
%>
</h3>
<a href="logout" class="text-warning pr-5 pt-2">logout</a>
</div>
<div class="m-2 text-danger">
<%
String msg = (String) request.getAttribute("msg");
out.println(msg);
%>
</div>
<div>
<a href="employee.html" class="btn btn-warning">AddEmployee</a>
<a href="view" class="btn btn-primary">ViewEmployees</a>
</div>
</div>
</body>
</html>