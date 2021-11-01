<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="base.jsp" %>
</head>
<body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://virtualbackgrounds.site/wp-content/uploads/2020/07/coffee-shop.jpg') ">
<div class="container mt-3">
<h1 style="text-align: center;font-weight: bold;color:white; background-color:brown ;padding: 20px;border-radius: 20px">Add Product Page</h1>
<hr>
<div style="background-color:white;padding: 30px;border-radius: 20px;">
<form action="handle-product" method="post">
<div class="container mt-3">
  <div class="form-group">
    <label >Product Name</label>
    <input type="text" class="form-control" name="product_name"  placeholder="Enter Product Name">
    
  </div>
  <div class="form-group">
    <label >Price</label>
    <input type="number" class="form-control" name="price" placeholder="Enter Price">
  </div>
  
  <div class="form-group">
    <label >Quantity</label>
    <input type="number" class="form-control" name="qty" placeholder="Enter Quntity">
  </div>
  
 
  <button type="submit" class="btn btn-success">Submit</button>
  <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
  </div>
</form>
</div>
</div>
</body>
</html>