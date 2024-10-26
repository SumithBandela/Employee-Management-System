<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"
    import="test.*"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Employee: UpdateDetails</title>
<link rel="icon" href="images/icon.jpeg">
<link rel="stylesheet" href="css/bootstrap.css">
</head>
<body>
<div class="container-fluid mt-2">
<div class="bg-dark text-white p-2">
<h3>
<%
AdminBean ab = (AdminBean)session.getAttribute("abean");
out.println("Page belongs to Admin : "+ab.getfName());
EmployeeBean eb = (EmployeeBean)session.getAttribute("emp");
%>
</h3>
</div>
<div class="mt-2">
<form action="update" method="post">
	<input type="hidden" name="eid" value="<%= eb.geteId()%>">
	<table>
	<tr>
		<td>Employee Name :</td>
		<td><input type="text" name="name"  value="<%=eb.getEname() %>" class="form-control"></td>
		</tr>
		<tr>
		<td>Position : </td>
		<td>
		<select name="position">
            <option value="software_engineer">Software Engineer</option>
            <option value="product_manager">Product Manager</option>
            <option value="qa_engineer">QA Engineer</option>
            <option value="frontend_developer">Frontend Developer</option>
            <option value="backend_developer">Backend Developer</option>
            <option value="ux_ui_designer">UX/UI Designer</option>
            <option value="data_scientist">Data Scientist</option>
            <option value="devops_engineer">DevOps Engineer</option>
            <option value="system_administrator">System Administrator</option>
            <option value="security_analyst">Security Analyst</option>
            <option value="technical_writer">Technical Writer</option>
            <option value="scrum_master">Scrum Master</option>
            <option value="mobile_developer">Mobile Developer</option>
            <option value="business_analyst">Business Analyst</option>
            <option value="marketing_specialist">Marketing Specialist</option>
        </select>
		</td>
		</tr>
		<tr>
		<td>Salary :</td>
		<td><input type="text" name="sal" value="<%=eb.getSal() %>" class="form-control"></td>
		</tr>
		<tr>
		<td>Email</td>
		<td><input type="email" name="email" value="<%=eb.getEmail() %>" class="form-control"></td>
		</tr>
		<tr>
		<td>Phone Number :</td>
		<td><input type="text" name="phno" value="<%=eb.getPhno() %>" class="form-control"></td>
		</tr>
		<tr>
		<td>Employment Type</td>
		<td>
		<select name="etype">
		<option value="full-time">full-time</option>
		<option value="part-time">part-time</option>
		</select>
		</td>
		</tr>
		<tr>
		<td><button type="submit" class="btn btn-warning">UpdateDetails</button></td>
		<td></td>
		</tr>
	</table>
</form>
</div>
</div>
</body>
</html>