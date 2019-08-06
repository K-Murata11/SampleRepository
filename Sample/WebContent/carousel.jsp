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
<title>Carousel Template · Bootstrap</title>

<link rel="canonical"
	href="https://getbootstrap.com/docs/4.3/examples/carousel/">

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
<link href="css/carousel.css" rel="stylesheet">
<link href="css/jumbotron.css" rel="stylesheet">
</head>
<body>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
			<a class="navbar-brand" href="#">Navbar</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarsExampleDefault"
				aria-controls="navbarsExampleDefault" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse" id="navbarsExampleDefault">
				<ul class="navbar-nav mr-auto">
					<li class="nav-item active"><a class="nav-link" href="#">Home
							<span class="sr-only">(current)</span>
					</a></li>
					<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
					<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
					</li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" href="http://example.com"
						id="dropdown01" data-toggle="dropdown" aria-haspopup="true"
						aria-expanded="false">Dropdown</a>
						<div class="dropdown-menu" aria-labelledby="dropdown01">
							<a class="dropdown-item" href="#">Action</a> <a
								class="dropdown-item" href="#">Another action</a> <a
								class="dropdown-item" href="#">Something else here</a>
						</div></li>
				</ul>
				<form class="form-inline my-2 my-lg-0" action="search" method="POST">
					<div class="btn-group">
						<select name="category" type="button" class="btn btn-primary">
							<%
								ArrayList<Object> categoryAL = (ArrayList) session.getAttribute("catAL");
							%>
							<option value="0">全カテゴリ</option>
							<%
								for (int i = 0; i < categoryAL.size(); i++) {
									ArrayList<Object> catAL = (ArrayList) categoryAL.get(i);
							%>
							<option value="<%=catAL.get(0)%>"><%=catAL.get(1)%></option>
							<%
								}
							%>
						</select> <input class="form-control mr-sm-2" type="text"
							placeholder="Search" aria-label="Search" name="search">
						<button class="btn btn-outline-primary my-2 my-sm-0" type="submit">Search</button>
					</div>
					<div class="btn-group" style="padding-left: 5px;">
						<a class="btn btn-success my-2 my-sm-0" href="product.jsp"
							role="button">カートへ移動</a>
					</div>
					<div class="btn-group" style="padding-left: 5px;">
						<a class="btn btn-outline-warning my-2 my-sm-0" href="signin.jsp"
							role="button">ログアウト</a>
					</div>
				</form>
			</div>
		</nav>
	</header>



	<h1>
		ようこそ
		<%=session.getAttribute("userName")%>
		様
	</h1>



	<main role="main">

	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>

		</ol>
		<div class="carousel-inner">
			<div class="carousel-item active">
				<img src="img/ipadpro.jpg"
					style="min-width: 0%; width: 100%; height: auto;">
				<rect width="100%" height="100%" fill="#777" />
				<div class="container">
					<div class="carousel-caption"
						style="background-color: rgba(0, 0, 0, 0.5);">
						<h1>世界だって創造できる</h1>
						<p>そう、iPadOSならね</p>
						<p>
							<a class="btn btn-lg btn-primary"
								href="https://www.apple.com/jp/ipados/ipados-preview/"
								role="button" target="_blank">プレビューはこちら &raquo;</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item" style="background-color: #777;">
				<img src="img/haruhi.jpg"
					style="min-width: 0%; right: 0; left: auto;">
				<rect width="100%" height="100%" fill="#777" />
				<div class="container">
					<div class="carousel-caption text-left">
						<h1>Pray For KyotoAnimation</h1>
						<p>
							京都アニメーション放火殺人事件被害者への<br> 支援はこちらから
						</p>
						<p>
							<a class="btn btn-lg btn-primary"
								href="https://www.kyotoanimation.co.jp/information/?id=3075"
								role="button" target="_blank">詳細 &raquo;</a>
						</p>
					</div>
				</div>
			</div>
			<div class="carousel-item">
				<img src="img/ryzen.png"
					style="min-width: 0%; width: 100%; height: auto;">
				<rect width="100%" height="100%" fill="#777" />
				<div class="container">
					<div class="carousel-caption text-right">
						<h1 style="background-color: rgba(0, 0, 0, 0.5);">
							令和にもなって、<br> まだ「Intel 入ってる」？
						</h1>
						<p>パワフル、そして安価。次世代のCPUは「AMD Ryzen」</p>
						<p>
							<span style="text-decoration: line-through;">ま、村田はIntel派なんですけどね</span>
							<a class="btn btn-lg btn-primary" href="https://www.amd.com/ja"
								role="button" target="_blank">Learn more &raquo;</a>
						</p>
					</div>
				</div>
			</div>
		</div>
		<a class="carousel-control-prev" href="#myCarousel" role="button"
			data-slide="prev"> <span class="carousel-control-prev-icon"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="carousel-control-next" href="#myCarousel" role="button"
			data-slide="next"> <span class="carousel-control-next-icon"
			aria-hidden="true"></span> <span class="sr-only">Next</span>
		</a>
	</div>

	<div class="row">
		<div class="col-lg-4"></div>
		<form class="form-inline my-2 my-lg-0" action="search" method="POST">
			<div class="btn-group">
				<select name="category" type="button"
					class="btn btn-secondary btn-lg">
					<option value="0">全カテゴリ</option>
					<%
						for (int i = 0; i < categoryAL.size(); i++) {
							ArrayList<Object> catAL = (ArrayList) categoryAL.get(i);
					%>
					<option value="<%=catAL.get(0)%>"><%=catAL.get(1)%></option>
					<%
						}
					%>
				</select> <input class="form-control mr-sm-2" type="
					text"
					placeholder="Search" aria-label="Search" name="search"
					aria-label="Sizing example input"
					aria-describedby="inputGroup-sizing-default">
				<button class="btn btn-outline-secondary my-2 my-sm-0 btn-lg"
					type="submit">Search</button>
			</div>
		</form>
		<div class="col-lg-4"></div>
	</div>
	<hr class="featurette-divider">
	<!-- Marketing messaging and featurettes
  ================================================== --> <!-- Wrap the rest of the page in another container to center all the content. -->
	<div class="container marketing">

		<!-- Three columns of text below the carousel -->
		<div class="row">
			<div class="col-lg-4">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 140x140">
					<title>Placeholder</title><rect width="100%" height="100%"
						fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				<h2>Heading</h2>
				<p>Donec sed odio dui. Etiam porta sem malesuada magna mollis
					euismod. Nullam id dolor id nibh ultricies vehicula ut id elit.
					Morbi leo risus, porta ac consectetur ac, vestibulum at eros.
					Praesent commodo cursus magna.</p>
				<p>
					<a class="btn btn-secondary" href="#" role="button">View
						details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 140x140">
					<title>Placeholder</title><rect width="100%" height="100%"
						fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				<h2>Heading</h2>
				<p>Duis mollis, est non commodo luctus, nisi erat porttitor
					ligula, eget lacinia odio sem nec elit. Cras mattis consectetur
					purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo,
					tortor mauris condimentum nibh.</p>
				<p>
					<a class="btn btn-secondary" href="#" role="button">View
						details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
			<div class="col-lg-4">
				<svg class="bd-placeholder-img rounded-circle" width="140"
					height="140" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 140x140">
					<title>Placeholder</title><rect width="100%" height="100%"
						fill="#777" />
					<text x="50%" y="50%" fill="#777" dy=".3em">140x140</text></svg>
				<h2>Heading</h2>
				<p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in,
					egestas eget quam. Vestibulum id ligula porta felis euismod semper.
					Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum
					nibh, ut fermentum massa justo sit amet risus.</p>
				<p>
					<a class="btn btn-secondary" href="#" role="button">View
						details &raquo;</a>
				</p>
			</div>
			<!-- /.col-lg-4 -->
		</div>
		<!-- /.row -->


		<!-- START THE FEATURETTES -->
		<%
			ArrayList searchAL = (ArrayList) session.getAttribute("searchAL");
			if (searchAL != null) {
				for (int i = 0; i < searchAL.size(); i++) {
					ArrayList detailAL = (ArrayList) searchAL.get(i);
					if ((i % 2) != 1) {
		%>


		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7">
				<h2 class="featurette-heading">
					<%=detailAL.get(1)%>
					<span class="text-muted">――<%=detailAL.get(3)%>円
					</span>
				</h2>
				<p class="lead"><%=detailAL.get(6)%></p>
				<table>
					<tr>
						<form action="cart" method="POST">
							<div class="btn-group" style="padding-right: 5px;">
								個数<select name="quantity" type="button"
									class="btn btn-outline-secondary">
									<%
										ArrayList<Object> cartAL = (ArrayList<Object>) session.getAttribute("cartAL");
													int detailQty = ((Integer) detailAL.get(2)).intValue();
													int itemsQty = 0;
													if (cartAL != null) {

														boolean flag = true;
														for (int a = 0; a < cartAL.size(); a++) {
															ArrayList<Object> itemsAL = (ArrayList<Object>) cartAL.get(a);

															String detailID = ((String) detailAL.get(0)).toString();
															String itemsID = ((String) itemsAL.get(0)).toString();
															itemsQty = ((Integer) itemsAL.get(7)).intValue();
															int quantity = detailQty - itemsQty;
															if (detailID.equals(itemsID)) {
																for (int b = 1; b <= quantity; b++) {
									%>
									<option value="<%=b%>">
										<%=b%></option>
									<%
										}
																if (detailQty == 0 || quantity <= 0) {
									%>
									<option value="0">0</option>
								</select>
							</div>
							<button class="btn btn-danger my-2 my-sm-0" disabled>
								購入できません</button>
							<%
								} else {
							%>
							</select>
							</div>
							<button class="btn btn-outline-primary my-2 my-sm-0"
								name="detail" value="<%=i%>">カートへ</button>
							<%
								}
														flag = false;
														break;
													}
												}
												if (flag) {
													for (int c = 1; c <= detailQty; c++) {
							%>
							<option value="<%=c%>"><%=c%></option>
							<%
								}
													if (detailQty == 0) {
							%>
							</select>
							</div>
							<button class="btn btn-danger my-2 my-sm-0" disabled>
								購入できません</button>
							<%
								} else {
							%>
							</select>
							</div>
							<button class="btn btn-outline-primary my-2 my-sm-0"
								name="detail" value="<%=i%>">カートへ</button>
							<%
								}
												}
											} else {
												for (int d = 1; d <= (int) detailAL.get(2); d++) {
							%>
							<option value="<%=d%>"><%=d%></option>
							<%
								}
												if (detailQty == 0) {
							%>
							</select>
							</div>
							<button class="btn btn-danger my-2 my-sm-0" disabled>
								購入できません</button>
							<%
								} else {
							%>
							</select>
							</div>
							<button class="btn btn-outline-primary my-2 my-sm-0"
								name="detail" value="<%=i%>">カートへ</button>
							<%
								}
											}
							%>
						</form>
					</tr>
				</table>
			</div>
			<div class="col-md-5">
				<img src="<%=detailAL.get(5)%>"
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 500x500">
			</div>
		</div>

		<%
			} else {
		%>

		<hr class="featurette-divider">

		<div class="row featurette">
			<div class="col-md-7 order-md-2">
				<h2 class="featurette-heading">
					<%=detailAL.get(1)%><span class="text-muted">――<%=detailAL.get(3)%>円
					</span>
				</h2>
				<p class="lead"><%=detailAL.get(6)%></p>
				<table>
					<tr>
						<form action="cart" method="POST">
							<div class="btn-group" style="padding-right: 5px;">
								個数 <select name="quantity" type="button"
									class="btn btn-outline-secondary">
									<%
										ArrayList<Object> cartAL = (ArrayList<Object>) session.getAttribute("cartAL");
													int detailQty = ((Integer) detailAL.get(2)).intValue();
													int itemsQty = 0;
													if (cartAL != null) {

														boolean flag = true;
														for (int a = 0; a < cartAL.size(); a++) {
															ArrayList<Object> itemsAL = (ArrayList<Object>) cartAL.get(a);

															String detailID = ((String) detailAL.get(0)).toString();
															String itemsID = ((String) itemsAL.get(0)).toString();

															itemsQty = ((Integer) itemsAL.get(7)).intValue();
															int quantity = detailQty - itemsQty;
															if (detailID.equals(itemsID)) {
																for (int b = 1; b <= quantity; b++) {
									%>
									<option value="<%=b%>">
										<%=b%></option>
									<%
										}
																if (detailQty == 0 || quantity <= 0) {
									%>
									<option value="0">0</option>
								</select>
							</div>
							<button class="btn btn-danger my-2 my-sm-0" disabled>
								購入できません</button>
							<%
								} else {
							%>
							</select>
							</div>
							<button class="btn btn-outline-primary my-2 my-sm-0"
								name="detail" value="<%=i%>">カートへ</button>
							<%
								}
														flag = false;
														break;
													}
												}
												if (flag) {
													for (int c = 1; c <= detailQty; c++) {
							%>
							<option value="<%=c%>"><%=c%></option>
							<%
								}
													if (detailQty == 0) {
							%>
							</select>
							</div>
							<button class="btn btn-danger my-2 my-sm-0" disabled>
								購入できません</button>
							<%
								} else {
							%>
							</select>
							</div>
							<button class="btn btn-outline-primary my-2 my-sm-0"
								name="detail" value="<%=i%>">カートへ</button>
							<%
								}
												}
											} else {
												for (int d = 1; d <= (int) detailAL.get(2); d++) {
							%>
							<option value="<%=d%>"><%=d%></option>
							<%
								}
												if (detailQty == 0) {
							%>
							</select>
							</div>
							<button class="btn btn-danger my-2 my-sm-0" disabled>
								購入できません</button>
							<%
								} else {
							%>
							</select>
							</div>
							<button class="btn btn-outline-primary my-2 my-sm-0"
								name="detail" value="<%=i%>">カートへ</button>
							<%
								}
											}
							%>
						</form>
					</tr>
				</table>
			</div>
			<div class="col-md-5 order-md-1">
				<img src="<%=detailAL.get(5)%>"
					class="bd-placeholder-img bd-placeholder-img-lg featurette-image img-fluid mx-auto"
					width="500" height="500" xmlns="http://www.w3.org/2000/svg"
					preserveAspectRatio="xMidYMid slice" focusable="false" role="img"
					aria-label="Placeholder: 500x500">
			</div>
		</div>
		<%
			}
				}
			}
		%>

		<hr class="featurette-divider">

		<!-- /END THE FEATURETTES -->


	</div>
	<!-- /.container --> <!-- FOOTER --> <footer class="container">
		<p class="float-right">
			<a href="#">Back to top</a>
		</p>
		<p>
			&copy; 2017-2019 Company, Inc. &middot; <a href="#">Privacy</a>
			&middot; <a href="#">Terms</a>
		</p>
	</footer> </main>
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script>
		window.jQuery
				|| document
						.write('<script src="assets/js/vendor/jquery-slim.min.js"><\/script>')
	</script>
	<script src="js/bootstrap.bundle.min.js"
		integrity="sha384-xrRywqdh3PHs8keKZN+8zzc5TX0GRTLCcmivcbNJWm2rs5C8PRhcEn3czEjhAO9o"
		crossorigin="anonymous"></script>
</body>
</html>
