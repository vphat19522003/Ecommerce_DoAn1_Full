<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ecommerce: Register</title>
<%@include file="all_component/allCss.jsp" %>
</head>
<body>
<%@include file="all_component/navbar.jsp" %>
<div class="container p-5">
	<div class="row">
		<div class="col-md-4 offset-md-4">
			<div class="card">
				<div class="card-body">
					<h4 class="text-center">Registration Page</h4>
					<c:if test="${not empty succMsg }">
						<p class="text-center text-success">${succMsg }</p>
						<c:remove var="succMsg" scope="session"/>
					</c:if>
					<c:if test="${not empty failedMsg }">
						<p class="text-center text-success">${failedMsg }</p>
						<c:remove var="failedMsg" scope="session"/>
					</c:if>
					<form action = "register" method="post">
						<div class="form-group">
    						<label for="exampleInputEmail1">Name</label>
    						<input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="fname">
 						</div>
 						<div class="form-group">
    						<label for="exampleInputEmail1">Phone Number</label>
    						<input type="number" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required="required" name="phone">
 						</div>
  						<div class="form-group">
    						<label for="exampleInputEmail1">Email address</label>
    						<input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ex: abc@gmail.com" required="required" name="email">
    						<small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
 						</div>
  						<div class="form-group">
    						<label for="exampleInputPassword1">Password</label>
    						<input type="password" class="form-control" id="exampleInputPassword1" required="required" name="password">
						</div>
  						<div class="form-check">
    						<input type="checkbox" class="form-check-input" id="exampleCheck1" required="required" name="check">
    						<label class="form-check-label" for="exampleCheck1">Agree terms and condition</label>
  						</div>
  						<button type="submit" class="btn btn-primary">Submit</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div>
<div class="container-fluid text-center text-white p-3" style="background-color: #0000a0; margin-top: 10.1rem">
	<h5>�Design and Develop by ThanhPhat_TanViet</h5>
</div>
</body>
</html>