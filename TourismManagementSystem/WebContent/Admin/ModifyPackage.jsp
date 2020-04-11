<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<link rel="stylesheet" type="text/css" href="../home/Aside.css">
<link rel="stylesheet" type="text/css" href="../home/Home.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Modify / Delete Package</title>
</head>
<body>
<%@ include file ="Header.jsp" %>
<%@ include file ="Aside.jsp" %>
	<section class="section">
		<div class="sectiondev">
		<h3>Modify / Delete Package</h3>
			<table class="table table-striped">
				<thead>
					<tr>
					<th>Package Name</th>
					<th>Place</th>
					<th>No of Days</th>
					<th>Cost</th>
					<th>Update</th>
					<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<%
					  try {
						  	Class.forName("com.mysql.jdbc.Driver");
					    	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/tourism","root","");
					    	PreparedStatement ps = con.prepareStatement("select * from package");
					    	ResultSet rs = ps.executeQuery();
					    	
					    	while(rs.next()){ %>
					    	<tr>
					    	<td><%=rs.getString(2) %></td>
					    	<td><%=rs.getString(3) %></td>
					    	<td><%=rs.getString(5) %></td>
					    	<td><%=rs.getString(4) %></td>
					    	<td><a href="../UpdatePackage?package=<%=rs.getString(2) %>&place=<%=rs.getString(3)%>&type=update ">Update</a></td>
					    	<td><a href="../DeletePackage?package=<%=rs.getString(2) %>&place=<%=rs.getString(3)%> ">Delete</a></td>
					    	</tr>
					    	<%} %>
					    	<% 
					    	}
					    	catch (Exception e) {
					    		e.printStackTrace();
					    	}%>
				</tbody>
			</table>
			
		</div>	
	</section>
<%@ include file="../home/Footer.jsp" %>
</body>
</html>