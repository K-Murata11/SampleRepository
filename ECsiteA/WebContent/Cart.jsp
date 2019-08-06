<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div style="text-align: center;">
		<h2>カート</h2>
		<table border>
			<th>商品名</th>
			<th>単価</th>
			<th>数量</th>
			<th>小計</th>
			<%
				ArrayList<Object> cartAL = (ArrayList<Object>) session.getAttribute("cartAL");
				int total = 0;
				for (int i = 0; i < cartAL.size(); i++) {
					ArrayList<Object> itemsAL = (ArrayList<Object>) cartAL.get(i);
					int price = ((Integer) (itemsAL.get(3))).intValue();
					int quantity = ((Integer) (itemsAL.get(8))).intValue();
					total += (price * quantity);
			%>
			<tr>
				<td><%=(String) itemsAL.get(1)%></td>
				<td><%=price%></td>
				<td><%=quantity%></td>
				<td><%=price * quantity%></td>
			</tr>
			<%
				}
				int tax = (int) (total * 0.08);
			%>
			<tr>
				<td colspan="3">合計</td>
				<td><%=total%></td>
			</tr>
			<tr>
				<td colspan="3">消費税</td>
				<td><%=tax%></td>
			</tr>
			<tr>
				<td colspan="3">総額</td>
				<td><%=total + tax%></td>
			</tr>
		</table>
		<form action="cartCheck" method="POST">
			<input type="submit" name="next" value="買い物を続ける"></input> <input
				type="submit" name="next" value="購入"></input>
		</form>
	</div>
</body>
</html>