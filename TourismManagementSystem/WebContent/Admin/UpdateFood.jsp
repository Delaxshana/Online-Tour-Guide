<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
<title>Update Food</title>
</head>
<body>
<script type="text/javascript">
$(document).ready(function(){
	$('#button').click(function(){
		var type = $('#foodType').val();
		var foodName = $('#foodName').val();
		var foodCost = $('#foodCost').val();
		$.ajax({
			type:'POST',
			data:{ type:type, foodName:foodName, foodCost:foodCost},
			url:'../UpdateFood1',
			success: function(result){
				$('#validation').html(result);
			}
		});	
	});
});
</script>

<%@ include file ="Header.jsp" %>
<%@ include file ="Aside.jsp" %>
	<section class="section">
		<div class="sectiondev">
			<div class="container">
			  <h2>Update Food</h2>
			  <div class="panel col-sm-8">
			    <div class="panel-body">
			    	<div class="row">
			    		<div class="col-sm-4">
			    			<form>
			    				<div class="form-group">
			    				Food Type:
			    				</div>
			    				<div class="form-group">
			    					<input class="form-control" type="text" value="<%=session.getAttribute("foodType") %>" id="foodType" name="foodType" readonly>
			    				</div>
			    				<div class="form-group">
			    				Food Name:
			    				</div>
			    				<div class="form-group">
			    					<input class="form-control" type="text" value="<%=session.getAttribute("foodName") %>" id="foodName" name="foodName" readonly>
			    				</div>
			    				<div class="form-group">
			    				Enter Cost:
			    				</div>
			    				<div class="form-group">
			    					<input class="form-control" type="text" value="<%=session.getAttribute("foodCost") %>" id="foodCost" name="foodCost" required="true">
			    				</div>
			    				<div class="form-group">
			    					<div class="text-right"> 
			    						<input type="button" id="button" value="Update Food" class="btn btn-primary">
			    					</div>
			    				</div>
			    				<div id="validation"></div>
			    			</form>
			    		</div>
			    	</div>
			  </div>
			</div>
		</div>
	</div>
	</section>
<%@ include file="../home/Footer.jsp" %>
</body>
</html>