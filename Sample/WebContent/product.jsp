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
<title>Product example · Bootstrap</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/product/">

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
<link href="css/product.css" rel="stylesheet">
</head>
<body>
	<nav class="site-header sticky-top py-1">
		<div
			class="container d-flex flex-column flex-md-row justify-content-between">
			<a class="py-2" href="#"> <svg xmlns="http://www.w3.org/2000/svg"
					width="24" height="24" fill="none" stroke="currentColor"
					stroke-linecap="round" stroke-linejoin="round" stroke-width="2"
					class="d-block mx-auto" role="img" viewBox="0 0 24 24"
					focusable="false">
					<title>Product</title><circle cx="12" cy="12" r="10" />
					<path
						d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94" /></svg>
			</a> <a class="py-2 d-none d-md-inline-block" href="#">Tour</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Product</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Features</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Enterprise</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Support</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Pricing</a> <a
				class="py-2 d-none d-md-inline-block" href="#">Cart</a>
		</div>
	</nav>
	<%
		ArrayList<Object> cartAL = (ArrayList) session.getAttribute("cartAL");
		if (cartAL != null) {
	%>
	<div
		class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
		<div class="product-device shadow-sm d-none d-md-block"></div>
		<div
			class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
		<div class="col-md-5 p-lg-5 mx-auto my-5">
			<h1 class="display-4 font-weight-normal">カートの中身</h1>
		</div>
	</div>
	<%
		int total = 0;
			int i = 0;
			for (; i < cartAL.size(); i++) {
				ArrayList<Object> itemsAL = (ArrayList) cartAL.get(i);
				int price = ((Integer) (itemsAL.get(3))).intValue();
				int quantity = ((Integer) (itemsAL.get(7))).intValue();
				total += (price * quantity);
	%>
	<%
		switch ((i + 1) % 4) {
					case 0 :
					case 1 :
	%>
	<%
		if ((i % 2) != 1) {
	%>
	<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
		<%
			}
		%>
		<div
			class="bg-dark mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center text-white overflow-hidden">
			<div class="my-3 py-3">
				<h2 class="display-5">
					<%=(String) itemsAL.get(1)%>
				</h2>

				<table class="table table-bordered" style="color: #fff;">
					<th>単価</th>
					<th>数量</th>
					<th>小計</th>
					<tr>
						<td><%=price%></td>
						<td><%=quantity%></td>
						<td><%=price * quantity%></td>
					</tr>
					<tr lowspan="2">
					</tr>
				</table>
				<form action="cartCheck" method="POST">
					<input type="hidden" name="delete" value="<%=i%>"></input>
					<button type="submit" class="btn btn-lg btn-outline-warning"
						name="next" value="削除">削除</button>
				</form>

			</div>
			<div class="bg-light shadow-sm mx-auto"
				style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
				<img src="<%=itemsAL.get(5)%>"
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 500x500">
			</div>
		</div>
		<%
			break;

						case 2 :
						case 3 :
							if ((i % 2) != 1) {
		%>
		<div class="d-md-flex flex-md-equal w-100 my-md-3 pl-md-3">
			<%
				}
			%>
			<div
				class="bg-light mr-md-3 pt-3 px-3 pt-md-5 px-md-5 text-center overflow-hidden">
				<div class="my-3 p-3">
					<h2 class="display-5">
						<%=(String) itemsAL.get(1)%>
					</h2>
					<table class="table table-bordered">
						<th>単価</th>
						<th>数量</th>
						<th>小計</th>
						<tr>
							<td><%=price%></td>
							<td><%=quantity%></td>
							<td><%=price * quantity%></td>
						</tr>
					</table>
					<form action="cartCheck" method="POST">
						<input type="hidden" name="delete" value="<%=i%>"></input>
						<button type="submit" class="btn btn-lg btn-outline-warning"
							name="next" value="削除">削除</button>
					</form>
				</div>
				<div class="bg-dark shadow-sm mx-auto"
					style="width: 80%; height: 300px; border-radius: 21px 21px 0 0;">
					<img src="<%=itemsAL.get(5)%>"
						class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
						width="auto" height="auto" xmlns="http://www.w3.org/2000/svg"
						preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
						aria-label="Placeholder: 500x500">
				</div>
			</div>
			<%
				break;
						}
						if ((i % 2) == 1) {
			%>
		</div>
		<%
			}
				}
				if ((i % 2) == 1) {
		%>
	</div>
	<%
		}
	%>


	<div style="text-align: center;">
		<form action="cartCheck" method="POST">
			<button type="submit" class="btn btn-lg btn-primary" name="next"
				value="購入">購入</button>
			<button type="submit" class="btn btn-lg btn-outline-primary"
				name="next" value="買い物を続ける">買い物を続ける</button>
			<button type="submit" class="btn btn-lg btn-outline-warning"
				name="next" value="キャンセル">キャンセル</button>
		</form>
	</div>


	<%
		} else {
	%>
	<div
		class="position-relative overflow-hidden p-3 p-md-5 m-md-3 text-center bg-light">
		<div class="product-device shadow-sm d-none d-md-block"></div>
		<div
			class="product-device product-device-2 shadow-sm d-none d-md-block"></div>
		<div class="col-md-5 p-lg-5 mx-auto my-5">
			<h1 class="display-4 font-weight-normal">カートの中身は空です</h1>
		</div>
	</div>

	<div style="text-align: center;">
		<form action="cartCheck" method="POST">
			<button type="submit" class="btn btn-lg btn-outline-primary"
				name="next" value="買い物を続ける">買い物を続ける</button>
		</form>
	</div>
	<%
		}
	%>

	<footer class="container py-5">
		<div class="row">
			<div class="col-12 col-md">
				<svg xmlns="http://www.w3.org/2000/svg" width="24" height="24"
					fill="none" stroke="currentColor" stroke-linecap="round"
					stroke-linejoin="round" stroke-width="2" class="d-block mb-2"
					role="img" viewBox="0 0 24 24" focusable="false">
					<title>Product</title><circle cx="12" cy="12" r="10" />
					<path
						d="M14.31 8l5.74 9.94M9.69 8h11.48M7.38 12l5.74-9.94M9.69 16L3.95 6.06M14.31 16H2.83m13.79-4l-5.74 9.94" /></svg>
				<small class="d-block mb-3 text-muted">&copy; 2017-2019</small>
			</div>
			<div class="col-6 col-md">
				<h5>Features</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted" href="#">Cool stuff</a></li>
					<li><a class="text-muted" href="#">Random feature</a></li>
					<li><a class="text-muted" href="#">Team feature</a></li>
					<li><a class="text-muted" href="#">Stuff for developers</a></li>
					<li><a class="text-muted" href="#">Another one</a></li>
					<li><a class="text-muted" href="#">Last time</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>Resources</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted" href="#">Resource</a></li>
					<li><a class="text-muted" href="#">Resource name</a></li>
					<li><a class="text-muted" href="#">Another resource</a></li>
					<li><a class="text-muted" href="#">Final resource</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>Resources</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted" href="#">Business</a></li>
					<li><a class="text-muted" href="#">Education</a></li>
					<li><a class="text-muted" href="#">Government</a></li>
					<li><a class="text-muted" href="#">Gaming</a></li>
				</ul>
			</div>
			<div class="col-6 col-md">
				<h5>About</h5>
				<ul class="list-unstyled text-small">
					<li><a class="text-muted" href="#">Team</a></li>
					<li><a class="text-muted" href="#">Locations</a></li>
					<li><a class="text-muted" href="#">Privacy</a></li>
					<li><a class="text-muted" href="#">Terms</a></li>
				</ul>
			</div>
		</div>
	</footer>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="/js/bootstrap.bundle.min.js"
		integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o"
		crossorigin="anonymous"></script>
</body>
</html>