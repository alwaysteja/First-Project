<%@page import="model.User"%>
<%@page import="service.Service"%>
<%@page import="java.sql.*,java.util.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.List"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Students Data</title>
</head>
<style>

a:link, a:visited {
  background-color: #f44336;
  color: white;
  padding: 15px 25px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
}

a:hover, a:active {
  background-color: red;
}
body {background-color: powderblue;}
h1   {color: blue;}
p    {color: red;}
table {
  width:100%;
}
table, th, td {
  border: 1px solid black;
  border-collapse: collapse;
}
th, td {
  padding: 15px;
  text-align: left;
}
#t01 tr:nth-child(even) {
  background-color: #eee;
}
#t01 tr:nth-child(odd) {
 background-color: #fff;
}
#t01 th {
  background-color: black;
  color: white;
}

</style>

</head>

<body>
<a  href="index.jsp">Home</a>
<h2>Students Data</h2>
<table><tr><th>ID</th>
<th>First Name</th>
<th>Last Name</th>
<th>Branch</th>
<th>Phone</th>
<th>Email</th>
<th>City</th>
<th>State</th>
<th>Country</th>
<th>EDIT</th>
<th>Delete</th>
</tr>
<%
String Id=request.getParameter("search");
int inte=Integer.parseInt(Id);
Service studentService=new Service();
User user=studentService.getById(inte);
%>
<tr><td><%=user.ID %></td>
<td><%=user.Fname %></td>
<td><%=user.Lname %></td>
<td><%=user.Branch %></td>
<td><%=user.Phone %></td>
<td><%=user.Email %></td>
<td><%=user.City%></td>
<td><%=user.State %></td>
<td><%=user.Country %></td>
<td><a href="Update.jsp?id=<%=user.ID%>">Edit</a></td>
<td><a href="delete.jsp?id1=<%=user.ID%>">Delete</a></td>
</tr>

</table>
</body>
</html>