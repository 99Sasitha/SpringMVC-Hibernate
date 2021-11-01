<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<%@include file="base.jsp" %>
</head>
<body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://virtualbackgrounds.site/wp-content/uploads/2020/07/coffee-shop.jpg') ">


<form action="${pageContext.request.contextPath }/handle-product" method="post">


<div class="container mt-3">
<h1 style="text-align: center;font-weight: bold;color:white; background-color:brown;padding: 20px;border-radius: 20px">Update Product Details</h1>
<hr>
<div style="background-color:white;padding: 30px;border-radius: 20px;">
<label>Id :</label>
<select name="id">
<option  value="${product.id }">${product.id}</option>
</select>

  <div class="form-group">
    <label >Product Name</label>
    <input type="text" class="form-control" name="product_name" value="${product.product_name}" placeholder="Enter Product Name">
    
  </div>
  <div class="form-group">
    <label >Price</label>
    <input type="number" class="form-control" value="${product.price}" name="price" placeholder="Enter Price">
  </div>
  
  <div class="form-group">
    <label >Quantity</label>
    <input type="number" class="form-control" value="${product.qty}" name="qty" placeholder="Enter Quntity">
  </div>
  
 
  <button type="submit" class="btn btn-warning">Update</button>
  <a href="${pageContext.request.contextPath }/" class="btn btn-outline-danger">Back</a>
  </div>
  </div>
</form>

</body>
</html>