<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
			<h2>新規登録</h2>
		</div>

		<div class="row">
			<div class="col-md-2"></div>
			<div class="col-md-8">
				<h4 class="mb-3">お客様情報を入力</h4>
				<form class="needs-validation" novalidate action="checkout" method="POST">
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="lastName">氏</label> <input type="text"
								class="form-control" id="lastName" placeholder="" value=""
								required name="lastName">
							<div class="invalid-feedback">苗字を入力してください（必須項目）
							</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="firstName">名</label> <input type="text"
								class="form-control" id="firstName" placeholder="" value=""
								required name="firstName">
							<div class="invalid-feedback">名前を入力してください（必須項目）
							</div>
						</div>
					</div>

					<div class="mb-3">
						<label for="email">メールアドレス</label>
						<input type="email" class="form-control" id="email"
							placeholder="sample@example.com" required name="email">
						<div class="invalid-feedback">メールアドレスを入力してください（必須項目）</div>
					</div>

					<div class="mb-3">
						<label for="password">パスワード</label> <input type="password"
							class="form-control" id="password" required name="password">
						<div class="invalid-feedback">パスワードを入力してください（必須項目）</div>
					</div>
<!--

					<div class="mb-3">
						<label for="password2">パスワード<span class="text-muted">（確認用）</span></label>
						<input type="password" class="form-control" id="password2" required>
						<div class="invalid-feedback">確認用パスワードを入力してください（必須項目）</div>
					</div>

					<div class="mb-3">
						<div>
							<label for="country">国籍</label> <select
								class="custom-select d-block w-100" id="country" required>
								<option value="">選択してください</option>
								<option>日本</option>
								<option>United States</option>
							</select>
							<div class="invalid-feedback">Please select a valid
								country.</div>
						</div>
					</div>
					<hr class="mb-4">
					<div class="custom-control custom-checkbox">
						<input type="checkbox" class="custom-control-input" id="save-info">
						<label class="custom-control-label" for="save-info">ログイン情報を保存する</label>
					</div>
					<hr class="mb-4">

					<h4 class="mb-3">支払方法</h4>

					<div class="d-block my-3">
						<div class="custom-control custom-radio">
							<input id="credit" name="paymentMethod" type="radio"
								class="custom-control-input" checked required> <label
								class="custom-control-label" for="credit">クレジットカード</label>
						</div>
						<div class="custom-control custom-radio">
							<input id="debit" name="paymentMethod" type="radio"
								class="custom-control-input" required> <label
								class="custom-control-label" for="debit">デビットカード</label>
						</div>
						<div class="custom-control custom-radio">
							<input id="paypal" name="paymentMethod" type="radio"
								class="custom-control-input" required> <label
								class="custom-control-label" for="paypal">PayPal</label>
						</div>
					</div>
					<div class="row">
						<div class="col-md-6 mb-3">
							<label for="cc-name">カード名義</label> <input type="text"
								class="form-control" id="cc-name" placeholder="" required>
							<small class="text-muted">クレジットカードに記載された名前（英大文字）を入力</small>
							<div class="invalid-feedback">カード名義を入力してください（必須項目）</div>
						</div>
						<div class="col-md-6 mb-3">
							<label for="cc-number">カード番号</label> <input
								type="text" class="form-control" id="cc-number" placeholder=""
								required>
							<div class="invalid-feedback">カード番号を入力してください（必須項目）</div>
						</div>
					</div>
					<div class="row">
						<div class="col-md-3 mb-3">
							<label for="cc-expiration">有効期限</label> <input type="text"
								class="form-control" id="cc-expiration" placeholder="" required>
							<div class="invalid-feedback">有効期限を入力してください（必須項目）</div>
						</div>
						<div class="col-md-3 mb-3">
							<label for="cc-cvv">CVV</label> <input type="text"
								class="form-control" id="cc-cvv" placeholder="" required>
							<div class="invalid-feedback">CVVを入力してください（必須項目）</div>
						</div>
					</div>
 -->
					<div style="text-align: center">
					<button class="btn btn-primary btn-lg" type="submit">確認</button>
					<a class="btn btn-lg btn-outline-primary" href="signin.jsp" role="button">キャンセル</a>
					</div>
				</form>
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
