<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.AdminBean"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Dashboard: Management Dashboard</title>
<link rel="icon" href="images/icon.jpeg">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="bg-dark text-white p-2 m-2 d-flex justify-content-between"> 
<h3><% AdminBean ab = (AdminBean) session.getAttribute("abean");
out.println("Welcome Admin : "+ab.getfName()+"<br>");
%>
</h3>
<a href="logout" class="text-warning pr-5 pt-2 ">logout</a>
</div>
<div class="m-2 p-2">
<a href="employee.html" class="btn btn-success">AddEmployee</a>
<a href="view" class="btn btn-info">ViewEmployees</a>
</div>
</body>
</html>