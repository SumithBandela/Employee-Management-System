<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import = "test.*,java.util.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Employee Directory: View All Staff</title>
<link rel="icon" href="images/icon.jpeg">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container-fluid mt-2 ">
<div class="bg-dark text-white d-flex justify-content-between p-2">
<h3><%
	AdminBean ab = (AdminBean) session.getAttribute("abean");
	out.println("Page belongs to Admin : "+ab.getfName());
	
 %>
 </h3>
 <a href="logout" class=" text-warning pr-5 pt-2">logout</a>
</div>
 <table class="table table-hover mt-2">
	<tr>
	<th>Employee ID</th>
	<th>Name</th>
	<th>Position</th>
	<th>Salary</th>
	<th>Email</th>
	<th>Phone Number</th>
	<th>Employment Type</th>
	<th></th>
	<th></th>
	</tr>
	<% 
	ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>)session.getAttribute("alist");
	Iterator it = al.iterator();
	while(it.hasNext())
	{
		EmployeeBean eb = (EmployeeBean) it.next();
%>
	
	<tr>
	<td><%=eb.geteId() %></td>
	<td><%=eb.getEname() %></td>
	<td><%=eb.getPosition() %>
	<td><%=eb.getSal() %></td>
	<td><%=eb.getEmail() %></td>
	<td><%=eb.getPhno() %></td>
	<td><%=eb.geteType() %></td>
	<td><a href="edit?eid=<%=eb.geteId()%>">Edit</a></td>
	<td><a href="delete?eid=<%=eb.geteId()%>">Delete</a></td>
	</tr>
<%		
	}
%>
</table>
<div class="mt-2">
	<a href="employee.html" class="btn btn-primary">AddEmployees</a>
</div>
</div>
</body>
</html>