package sample;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CheckOutServlet extends HttpServlet {

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		String mail = req.getParameter("email");
		String pass = req.getParameter("password");
		String lastName = req.getParameter("lastName");
		String firstName = req.getParameter("firstName");
		String name = lastName + " " + firstName;

		String url = "jdbc:mysql://localhost/lesson20xx?useSSL=false";
		String id = "root";
		String pw = "password";
		Connection cnct = null;
		Statement st = null;
		ResultSet rs = null;
		PreparedStatement pst = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnct = DriverManager.getConnection(url, id, pw);
			st = cnct.createStatement();
			rs = st.executeQuery("SELECT MAX(id)+1 FROM userid;");
			int nextid = 0;
			try {
				rs.next();
				nextid = rs.getInt(1); {
				}
			} catch (SQLException e) {
				e.printStackTrace();
			}

			String sqlStr = "INSERT INTO userid VALUES ("+ nextid +","
					+ "'" + mail + "',"
					+ "'" + pass + "',"
					+ "'" + name + "'" + ");";

			pst = cnct.prepareStatement(sqlStr);
			pst.executeUpdate();

		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (st != null) {
					st.close();
				}
				if (pst != null) {
					pst.close();
				}
				//	if (cnct != null) {
				//	cnct.close();
				//	}
			} catch (Exception e) {
				e.printStackTrace();
			}
		}


		HttpSession session = req.getSession(true);
		session.setAttribute("name", name);
		RequestDispatcher rd = req.getRequestDispatcher("/carousel.jsp");
		rd.forward(req, resp);


	}

}