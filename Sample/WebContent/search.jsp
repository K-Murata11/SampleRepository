<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!doctype html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author"
	content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
<meta name="generator" content="Jekyll v3.8.5">
<title>Checkout example · Bootstrap</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/checkout/">

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">


<style>
.bd-placeholder-img {
	font-size: 1.125rem;
	text-anchor: middle;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

@media ( min-width : 768px) {
	.bd-placeholder-img-lg {
		font-size: 3.5rem;
	}
}
</style>
<!-- Custom styles for this template -->
<link href="css/form-validation.css" rel="stylesheet">
</head>
<body class="bg-light">
	<div class="container">
		<div class="py-5 text-center">
			<h2>検索結果</h2>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">

		<div class="row">
			<div class="col-md-4">項目</div>
			<div class="col-md-8">内容</div>
<%
		ArrayList<Object> result = (ArrayList<Object>)request.getAttribute("result");
		for (int i = 0; i < result.size(); i++) {
			ArrayList<Object> al = (ArrayList<Object>) result.get(i);
%>
			<div class="col-md-4">ID：</div><div class="col-md-8"><%= al.get(0) %></div>
			<div class="col-md-4">名前：</div><div class="col-md-8"><%= al.get(1) %></div>
			<div class="col-md-4">価格：</div><div class="col-md-8"><%= al.get(2) %></div>
			<div class="col-md-4">在庫：</div><div class="col-md-8"><%= al.get(3) %></div>
<%
			if (i < result.size() - 1) {
				out.println("<div></div>");
			}
		}
%>
			</div>
			<div class="col-md-2"></div>
		</div>

		<footer class="my-5 pt-5 text-muted text-center text-small">
			<p class="mb-1">&copy; 2017-2019 Company Name</p>
			<ul class="list-inline">
				<li class="list-inline-item"><a href="#">Privacy</a></li>
				<li class="list-inline-item"><a href="#">Terms</a></li>
				<li class="list-inline-item"><a href="#">Support</a></li>
			</ul>
		</footer>
	</div>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>window.jQuery || document.write('<script src="assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
	<script src="dist/js/bootstrap.bundle.min.js"
		integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o"
		crossorigin="anonymous"></script>
	<script src="js/form-validation.js"></script>
</body>
</html>
