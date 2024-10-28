<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
.table {
	width: 65%;
	background-color: aqua;
	margin: auto;
	
}
table{
border-radius: 10px;
}
.create{
	margin-left:65%;
	border-radius: 10px;
	margin-bottom:15px;
	margin-right:10px;
	color: white;
	background-color: blue;
	padding: 10px;
	width: 100px;
}
.logout{
	border-radius: 10px;
	color: white;
	background-color: blue;
	margin-bottom:10px;
	padding: 10px;
	width: 100px;
}
.tbody{
	background-color:  rgb(248, 108, 236);

}
.tbody button{
color:white;
background-color: blue;
border-radius: 10px;
padding: 5px;
width: 70px;
}
h1{
text-align: center;
font-size: 45px;
font-style: oblique;
color:teal;
}
.names{
 position: absolute;
 top: 12vh;
 left:18vw;
}
</style>
</head>
<body>
	<h1>All Employees</h1>
	<div class="btn-log">
		<a href="register.jsp"><button class="create">Create</button></a>
		<a href="logout"><button class="logout">Logout</button></a>
	</div>
	<div class="names">
		<h2><%= session.getAttribute("name") %></h2>
	</div>
	<table border="2" class="table" rules="all" margin="auto" cellpadding="10">
		<thead>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Salary</th>
			<th>Dept No</th>
			<th>Password</th>
			<th colspan="2">Action</th>
		</thead>

		<%
		ResultSet rs = (ResultSet) request.getAttribute("rs");
		while (rs.next()) {
		%>
		<tbody class="tbody">
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><a href="updatepage?id=<%=rs.getString(1)%>"><button>Update</button></a></td>
				
				<td><a href="delete?id=<%=rs.getString(1)%>"><button>Delete</button></a></td>
			</tr>


			<%
			}
			%>
		</tbody>
	</table>
	<script type="text/javascript">
		 let msgele=document.getElementById("msg");
		 setTimeout(()=>{
		 msgele.style.display="none";
		 },2000);
</script>
</body>
</html>