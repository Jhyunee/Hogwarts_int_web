<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="dto.Product" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<jsp:useBean id="productDAO" class="dao.ProductRepository" scope="session" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.css">
<link href="https://fonts.googleapis.com/css2?family=Cinzel+Decorative:wght@700&display=swap" rel="stylesheet">
<script type="text/javascript" src="./resources/js/validation.js" ></script>
<meta charset="UTF-8">
<title>Shipping Info</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <h1 class="navbar-brand">Shipping Information</h1>
    <br><br>
  </div>
</nav>

<form name="newProduct" action="./processShippingInfo.jsp" method="POST" >

	<input type="hidden" name="cartId" value="<%=request.getParameter("cartId") %>">
	
    <div class="form-group">
      <label class="form-label mt-4">Name</label>
      <input type="text" class="form-control" name="name">
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4">Shipping Date</label>
      <input type="text" class="form-control" name="shippingDate">
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4">Country</label>
      <input type="text" class="form-control" name="country">
    </div>
   
    <div class="form-group">
      <label class="form-label mt-4">Zip Code</label>
      <input type="text" class="form-control" name="zipCode">
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4">Address</label>
      <input type="text" class="form-control" name="address">
    </div>
    
    <br><br>
    <input type="submit" class="btn btn-primary" value="SUBMIT">
    &nbsp;&nbsp;
	<a class="btn btn-outline-secondary" href="./cart.jsp?cartId=<%=request.getParameter("cartId") %>">BACK</a>
</form>
</body>
</html>