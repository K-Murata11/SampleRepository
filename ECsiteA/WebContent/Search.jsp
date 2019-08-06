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
		<form action="search" method="POST">
			<h1>検索</h1>
			<input type="text" name="search" size="70">
			<p>
				カテゴリ <select name="category">
					<%
						ArrayList<Object> categoryAL = (ArrayList)session.getAttribute("catAL");
					%>
					<option value="0">全カテゴリ</option>
					<%
						for (int i = 0; i < categoryAL.size(); i++) {
							ArrayList<Object> catAL = (ArrayList)categoryAL.get(i);
					%>
					<option value="<%=catAL.get(0)%>"><%=catAL.get(1)%></option>
					<%
						}
					%>
				</select>
			</p>
			<p>
				<input type="submit" value="検索">
			</p>
		</form>
	</div>
	<%
		ArrayList searchAL = (ArrayList) session.getAttribute("searchAL");
		if (searchAL != null) {
	%>

	<div align="center">
		<h1>検索結果</h1>
		<table border="1">
			<tr>
				<td>商品名</td>
				<td>価格</td>
				<td>詳細</td>
			</tr>
			<!-- APIのArrayListクラスの変数aにlist2の引数を代入。中身はMotherlist -->
			<%
				//for文で引数rowの数だけ回す
					for (int i = 0; i < searchAL.size(); i++) {
			%>
			<tr>
				<td>
					<%
						//ArrayListクラスの変数bにgetメソッドを使って呼び出した変数rowの配列を代入
								ArrayList columns = (ArrayList) searchAL.get(i);
					%> <!-- 変数columnsの配列の２番目である商品名を表示 -->
					<%=columns.get(1)%></td>
				<!-- 変数columnsの配列の４番目である価格を表示 -->
				<td><%=columns.get(3)%></td>
				<td><form action="detail" method="POST">
						<button type="submit" name="detail" value="<%=i%>">詳細</button>
					</form></td>
			</tr>
			<%
				}
			%>

		</table>
	</div>
	<%
		}
	%>
</body>
</html>