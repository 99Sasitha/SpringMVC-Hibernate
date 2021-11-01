<html>
<head>
<%@include file="base.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>Epic SpringMVC_Hibernate CRUD</title>
<script
	src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css">
</head>
<body style="background-size: cover;background-repeat: no-repeat;background-image:url('https://virtualbackgrounds.site/wp-content/uploads/2020/07/coffee-shop.jpg') ">
	<div class="container mt-3">
	
		<div class="row">
			<div class="col-md-12">
				<h1 class="text-center mb-3" style="font-weight: bold;color:white; background-color:brown;padding: 20px;border-radius: 20px">Welcome To Epic Product App</h1>
				<hr>
<div style="background-color:white;padding: 30px;border-radius: 20px;">
				<table class="table" id="sasi">
					<thead class="thead-dark">
						<tr>
							<th scope="col">ID</th>
							<th scope="col">Product Name</th>
							<th scope="col">Price</th>
							<th scope="col">Qty</th>
							<th scope="col">Edit</th>
							<th scope="col">Delete</th>
						</tr>
					</thead>
					<tbody>
						<c:forEach items="${products}" var="p">
							<tr>
								<th scope="row">${p.id}</th>
								<td>${p.product_name}</td>
								<td>Rs. ${p.price} /=</td>
								<td>${p.qty}</td>
								<td><a href="update/${p.id}"><i class="fas fa-edit"
										style="color: blue; font-size: 25px"></i></a></td>
								<td><a href="delete/${p.id}"
									onclick="return confirm('Are You Want to Delete?')"
									style="color: red; font-size: 25px"><i
										class="fas fa-trash-alt"></i></a></td>
							</tr>

						</c:forEach>
					</tbody>
				</table>
				<script>
					$(document).ready(function() {
						$('#sasi').DataTable();
					});
				</script>

				<div class="container">
					<a href="add-product" class="btn btn-outline-success">Add
						Product</a>
				</div>
				</div>

			</div>

		</div>


	</div>
</body>
</html>
