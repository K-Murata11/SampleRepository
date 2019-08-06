package sample;

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

public class DetailServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		//SearchServletのsession変数を呼び出す。中身は商品配列を格納した配列。
		HttpSession session = req.getSession(true);
		@SuppressWarnings("rawtypes")
		//session変数内のMotherlist変数を呼び出しArrayList型の変数ArrayMotherlistに代入し直す。
		ArrayList searchAL = (ArrayList) session.getAttribute("searchAL");
		//文字コードを指定
		req.setCharacterEncoding("UTF-8");
		//detailをint型に変換
		int detail = Integer.parseInt(req.getParameter("detail"));
		System.out.println(detail);

		@SuppressWarnings({ "rawtypes", "unchecked" })
		//.getメソッドでArrayMotherlistの配列をbに代入
		ArrayList<Object> detailAL = (ArrayList)searchAL.get(detail);

		String sql = "SELECT * FROM category WHERE cat_id = " + detailAL.get(4);
		System.out.println(detailAL);

		try {

			//変数yで書いた条件文をResultSetオブジェクトでMySQLを参照して行単位にアクセス
			ResultSet rs = JdbcConnection.connection(sql);


			//while文でSQL文のカラム名をそれぞれ変数に代入
			while(rs.next()) {
				String id = rs.getString("cat_id");
				String name = rs.getString("cat_name");

				detailAL.add(name);
			}

			//System.out.println(b.get(2));
			//System.out.println(b.get(2).getClass());
			int stock = (int) detailAL.get(2);
			//System.out.println(stock);


			session.setAttribute("detailAL", detailAL);
			session.setAttribute("stock", stock);


			RequestDispatcher rd = req.getRequestDispatcher("Detail.jsp");
			rd.forward(req, resp);

		} catch (SQLException e) {
			e.printStackTrace();
		}
	}


}
