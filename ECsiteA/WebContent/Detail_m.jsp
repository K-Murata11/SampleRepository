<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		ArrayList<Object> detailAL = (ArrayList<Object>) session.getAttribute("detailAL");
	%>
	<div style="text-align: center;">
		<h2>商品紹介</h2>
		<table>
			<tr>
				<td><img src="<%=detailAL.get(5)%>"></td>
				<td>
					<table border=1>
						<tr>
							<td>商品名</td>
							<td><%=detailAL.get(1)%></td>
						</tr>
						<tr>
							<td>カテゴリ</td>
							<td><%=detailAL.get(7)%></td>
						</tr>
						<tr>
							<td>在庫</td>
							<td><%=detailAL.get(2)%></td>
						</tr>
						<tr>
							<td>商品紹介</td>
							<td><%=detailAL.get(6)%></td>
						</tr>
					</table> <br>
					<form action="cart" method="POST">
						個数 <select name="quantity">
							<%
								for (int i = 1; i <= (int) detailAL.get(2); i++) {
							%>
							<option value="<%=i%>"><%=i%></option>
							<%
								}
							%>
						</select> <input type="submit" name="test" value="カートへ">
					</form> <input type="button" name="test" value="戻る">
				</td>
			</tr>
		</table>
	</div>
</body>
</html>