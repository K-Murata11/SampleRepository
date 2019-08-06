<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>ログイン</h1>
	<form action="login" method="POST">

		<table align="center">
			<tr>
				<td><h3>名前</h3></td>
				<td><input type="text" name="name" required></td>
			</tr>
			<tr>
				<td><h3>パスワード</h3></td>
				<td><input required type="password" name="password"></td>
			</tr>

		</table>

		<br> <br> <input type="submit" value="LOGIN">

	</form>


</body>
</html>