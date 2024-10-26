<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Updated Successfully: Employee Updated!</title>
<link rel="icon" href="images/icon.jpeg">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container-fluid m-2 p-2">
<div class="bg-dark text-white d-flex justify-content-between p-2">
<h3>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
out.println("Page belongs to : "+ab.getfName());
String msg = (String) request.getAttribute("msg");

%>
</h3>
<a href="logout" class="text-warning pr-5 pt-2">logout</a>
</div>
<div class="text-danger m-3">
<%
out.println(msg);
%>
</div>
<div>
<a href="employee.html" class="btn btn-primary">AddEmployee</a>
<a href="view" class="btn btn-warning">ViewEmployees</a>
</div>
</div>
</body>
</html>