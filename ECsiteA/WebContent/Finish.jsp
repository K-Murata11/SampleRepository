<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>お買い上げありがとうございました！</h1>

	<br>
	<br>
	<form action="logout" method="POST">
	<input type="submit" value="買い物を続ける" name="next">

		<br> <br> <input type="submit" value="ログアウト" name="next">
	</form>

セッションテスト
session(name) = <%= session.getAttribute("userName") %>
session(pw) = <%= session.getAttribute("userPw") %>

</body>
</html>