package shopping;

import java.io.IOException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class SearchServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		//文字コードを指定
		req.setCharacterEncoding("UTF-8");
		resp.setCharacterEncoding("UTF-8");
		//Search.jspで定義したserchとcategoryの変数の中身をそれぞれ同じ名前で代入
		String search = req.getParameter("search");
		String category = req.getParameter("category");

		//JdbcConnectionクラスをインスタンス化
		JdbcConnection x = new JdbcConnection();


		String sql = "SELECT * FROM product WHERE pro_name LIKE '%"+search+"%'";
		//MySQLのproductテーブルを全て参照し、その中のpro_nameの値をserchの値と部分一致し、categoryの値と完全一致という条件文をString型の変数yに代入
		int catID = Integer.parseInt(category);
		//全カテゴリ検索とカテゴリ別検索の分岐
		if(catID != 0) {
			sql += " AND cat_id = '"+category+"'";
		}
		try {
			//ArrayListにlistを格納するMotherlist変数を作っておく
			ArrayList searchAL = new ArrayList();
			//この段階でリストは空なので何も表示されない
			//System.out.println(Motherlist);

			//変数yで書いた条件文をResultSetオブジェクトでMySQLを参照して行単位にアクセス
			ResultSet rs = JdbcConnection.connection(sql);


			//while文でSQL文のカラム名をそれぞれ変数に代入
			while(rs.next()) {
				String cd = rs.getString("pro_cd");
				String name = rs.getString("pro_name");
				int no = rs.getInt("stock_no");
				int price = rs.getInt("pro_price");
				String id = rs.getString("cat_id");
				String img = rs.getString("pro_img");
				String msg = rs.getString("pro_msg");

				//ArrayListメソッドで変数listに代入した変数の値を代入
				ArrayList items = new ArrayList();

				items.add(cd);
				items.add(name);
				items.add(no);
				items.add(price);
				items.add(id);
				items.add(img);
				items.add(msg);

				//代入したlistの値をlist2に代入
				searchAL.add(items);
			}
			HttpSession session = req.getSession(true);
			session.setAttribute("searchAL", searchAL);
			//System.out.println(session.getAttribute("Motherlist"));
			RequestDispatcher rd = req.getRequestDispatcher("Search.jsp");
			rd.forward(req, resp);

		} catch (SQLException e) {
			e.printStackTrace();
		}


	}
}

