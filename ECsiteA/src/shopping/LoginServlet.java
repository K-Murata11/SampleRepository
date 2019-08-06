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

public class LoginServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {


		//UTF-8国際化対応設定、全世界通用文字コード
		req.setCharacterEncoding("UTF-8");

		//String型のユーザー名を入手する
		String jspName = req.getParameter("name");

		//String型のパスワードを入手する
		String jspPw = req.getParameter("password");

		System.out.println(jspName);
		System.out.println(jspPw);

		RequestDispatcher rd = null;

		/*jspで入力したnameとDB中のloginnameとマーチングを想定とする前提で
		 JdbcConnectionクラスのuseテーブルの中のlogin_nameにjsp_Nameを
		 String型のsqlを設定する
		 */
		String sql ="SELECT * FROM user WHERE login_name='"+ jspName +"'";
		/*上記ははDBと接続処理して、
		結果はrsを設定する*/
		ResultSet rs =JdbcConnection.connection(sql);

		//セッション開始、引数tureを設定
		HttpSession session=req.getSession(true);

		//jspNameをDBで検索して、DBでのlogin_pwを取得する
		try {
			while(rs.next()) {
				String dbName = rs.getString("login_name");
				String dbPw = rs.getString("login_pw");
				//上記の操作結果をチェックため、Systemoutで出力する
				System.out.println(dbPw);

				if (dbPw.equals(jspPw)) {
					ArrayList<Object> catAL = new ArrayList<Object>();
					String sqlCat ="SELECT * FROM category;";
					ResultSet rsCat =JdbcConnection.connection(sqlCat);
					while(rsCat.next()) {
						ArrayList<Object> categoryAL = new ArrayList<Object>();
						String catID = rsCat.getString("cat_id");
						String catName = rsCat.getString("cat_name");
						categoryAL.add(catID);
						categoryAL.add(catName);
						catAL.add(categoryAL);
					}

					//dbNameの値をuserNameの箱に格納する
					session.setAttribute("userName", dbName);
					//dbPwの値をuserPwの箱に格納する
					session.setAttribute("userPw", dbPw);

					session.setAttribute("catAL", catAL);

					//転送先Finish.jspに移動する
					rd = req.getRequestDispatcher("Search.jsp");
					rd.forward(req, resp);

				}else {

					String errorMsg = "ユーザーID・パスワードが違います";
					session.setAttribute("errorMsg", errorMsg);

					//転送先LoginError.jspに移動する
					rd = req.getRequestDispatcher("Login.jsp");
					rd.forward(req, resp);
				}
			}

			if(rd == null) {
				String errorMsg = "ユーザーID・パスワードが違います";
				session.setAttribute("errorMsg", errorMsg);

				rd = req.getRequestDispatcher("Login.jsp");
				rd.forward(req, resp);
			}

		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();



		}
	}
}



