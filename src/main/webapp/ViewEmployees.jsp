<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="java.util.*,test.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table, th,td{
border: 1px solid black;
}
</style>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
ArrayList<EmployeeBean> al = (ArrayList<EmployeeBean>) session.getAttribute("alist");
out.println("page belongs to Admin : "+ab.getfName()+"<br>");
Iterator<EmployeeBean> it = al.iterator();
%>
<table style="width:60%">
<tr>
	<th>EmpId</th>
	<th>EmpName</th>
	<th>EmpDesg</th>
	<th>BSal</th>
	<th>HRA</th>
	<th>DA</th>
	<th>TotSal</th>
</tr>
<%
while(it.hasNext()){
	EmployeeBean eb = (EmployeeBean)it.next();
%>
<tr>
	<td><%=eb.geteId() %></td>
	<td><%=eb.geteName() %></td>
	<td><%=eb.geteDesg() %></td>
	<td><%=eb.getbSal() %></td>
	<td><%=eb.getHra() %></td>
	<td><%=eb.getDa() %></td>
	<td><%=eb.getTotSal()%></td>
	<td><a href="edit" >Edit</a></td>
	<td><a href="delete">Delete</a></td>
</tr>
<%
}
%>
</table>
<br>
<a href="employee.html">AddEmployee</a>
<a href="logout">Logout</a>
</body>
</html>