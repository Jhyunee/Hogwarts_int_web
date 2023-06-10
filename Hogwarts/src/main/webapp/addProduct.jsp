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
<title>Add Item</title>
</head>
<body>

<fmt:setLocale value='<%=request.getParameter("language") %>' />
<fmt:bundle basename="bundle.message" >

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <div class="container-fluid">
    <h1 class="navbar-brand">&nbsp;&nbsp; <fmt:message key="title" /></h1>
    <br><br>
  </div>
</nav>

<div align="right" >
	<br><a href="?language=ko" >Korean</a> | <a href="?language=en">English</a>&nbsp;&nbsp;&nbsp;&nbsp;
	<a href="logout.jsp" class="btn btn-primary" >Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;
</div>

<form name="newProduct" action="./processAddProduct.jsp" method="POST" enctype="multipart/form-data" >

    <div class="form-group">
      <label class="form-label mt-4"><fmt:message key="productId" /></label>
      <input type="text" class="form-control" name="productId" id="productId">
      <small class="form-text text-muted">Enter a unique product ID.</small>
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4"><fmt:message key="name" /></label>
      <input type="text" class="form-control" name="name" id="name">
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4"><fmt:message key="price" /></label>
      <input type="text" class="form-control" name="price" id="price">
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4"><fmt:message key="description" /></label>
      <textarea class="form-control" name="description" rows="3"></textarea>
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4"><fmt:message key="category" /></label>
      <input type="text" class="form-control" name="category">
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4"><fmt:message key="unitsInStock" /></label>
      <input type="text" class="form-control" name="unitsInStock" id="unitsInStock">
    </div>
    
    <div class="form-group">
      <label class="form-label mt-4"><fmt:message key="condition" /></label>
      <select class="form-select" name="condition">
        <option value="New">New</option>
        <option value="Used">Second hand (Used)</option>
        <option value="Etc">ETC</option>
      </select>
    </div>

    <div class="form-group">
      <label for="formFile" class="form-label mt-4"><fmt:message key="productImage" /></label>
      <input type="file" class="form-control"  name="productImage">
    </div>
    
    <br><br>
    <input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddProduct()" >

</form>
</fmt:bundle>
</body>
</html>