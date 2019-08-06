<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align="center">
		<h1>商品紹介</h1>
		<div style="float: left;">
			<%
				ArrayList<Object> detailAL = (ArrayList) session.getAttribute("detailAL");
			%>
			<img src="<%=detailAL.get(5)%> " width="300px" border="4px" alt="">
		</div>

		<table border="1">
			<tr>
				<td>商品名</td>
				<td><%=detailAL.get(1)%></td>
			</tr>
			<tr>
				<td>カテゴリ</td>
				<td><%=detailAL.get(7)%></td>
			</tr>
			<tr>
				<td>価格</td>
				<td><%=detailAL.get(3)%>円</td>
			</tr>
			<tr>
				<td>在庫</td>
				<td><%=detailAL.get(2)%>個</td>
			</tr>
			<tr>
				<td>商品紹介</td>
				<td><%=detailAL.get(6)%></td>
			</tr>
		</table>
		<table>
			<tr>
				<form action="cart" method="POST">
					個数 <select name="quantity">
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

									itemsQty = ((Integer) itemsAL.get(8)).intValue();
									if (detailID.equals(itemsID)) {
										for (int b = 0; b <= (detailQty - itemsQty); b++) {
						%>
						<option value="<%=b%>">残り
							<%=b%></option>
						<%
							}
										if (detailQty == 0 || (detailQty - itemsQty) <= 0) {
						%>
					</select> <input type="button" disabled value="購入できません">
					<%
						} else {
					%>
					</select> <input type="submit" name="test" value="カートへ">
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
					</select> <input type="button" disabled value="購入できません">
					<%
						} else {
					%>
					</select> <input type="submit" name="test" value="カートへ">
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
					</select> <input type="button" disabled value="購入できません">
					<%
						} else {
					%>
					</select> <input type="submit" name="test" value="カートへ">
					<%
						}
						}
					%>
				</form>
				<button type="button" onclick="history.back()">戻る</button>
			</tr>
		</table>
	</div>
</body>
</html>