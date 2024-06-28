<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
out.println("page belongs to Admin : "+ab.getfName()+"<br>");
EmployeeBean eb = (EmployeeBean)session.getAttribute("emp");
%>
<form action="update" method="post">
<input type="hidden"  name="eid" value="<%=eb.geteId() %>">
BasicSalary:<input type="text" name="bsal" value=<%=eb.getbSal() %>><br>
HRA(0.93-0.61):<input type="text" name="hra" value=<%=eb.getHra() %>><br>
DA(0.63-0.61)<input type="text" name="da" value=<%=eb.getDa() %>><br>
<input type="submit" value="UpdateEmployee">

</form>
</body>
</html>