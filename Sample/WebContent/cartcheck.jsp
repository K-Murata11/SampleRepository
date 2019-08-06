<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
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
			<h2>購入してもよろしいですか？</h2>
		</div>

		<%
			ArrayList<Object> cartAL = (ArrayList<Object>) session.getAttribute("cartAL");
		%>
		<div class="row">
			<div class="col-md-12 order-md-12 mb-12">
				<h4 class="d-flex justify-content-between align-items-center mb-3">
					<span class="text-muted">Your cart</span> <span
						class="badge badge-secondary badge-pill">項目：<%= cartAL.size() %></span>
				</h4>
				<ul class="list-group mb-3">
					<%
						int total = 0;
						for (int i = 0; i < cartAL.size(); i++) {
							ArrayList<Object> itemsAL = (ArrayList<Object>) cartAL.get(i);
							int price = ((Integer) (itemsAL.get(3))).intValue();
							int quantity = ((Integer) (itemsAL.get(7))).intValue();
							total += (price * quantity);
					%>

					<li
						class="list-group-item d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0"><%=(String) itemsAL.get(1)%></h6>
							<small class="text-muted">（<%=price%>/個）×<%=quantity%></small>
						</div> <span class="text-muted"><%=price * quantity%></span>
					</li>
					<%
						}
						int tax = (int) (total * 0.08);
					%>
					<li
						class="list-group-item list-group-item-warning d-flex justify-content-between lh-condensed">
						<div>
							<h6 class="my-0">消費税</h6>
						</div> <span class="text-muted"><%=tax%></span>
					</li>
					<li class="list-group-item d-flex justify-content-between"><span>Total
					</span> <strong><%=total + tax%></strong></li>

				</ul>

				<form action="buyCheck" method="POST">
					<button type="submit" class="btn btn-lg btn-outline-primary" type="submit"
						name="check" value="いいえ">いいえ</button>
					<button type="submit" class="btn btn-lg btn-primary"
						type="submit" name="check" value="はい">はい</button>
				</form>
			</div>
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
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/docs/4.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o"
		crossorigin="anonymous"></script>
	<script src="form-validation.js"></script>
</body>
</html>
