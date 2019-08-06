package shopping;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcConnection {
	public static ResultSet connection(String sqlStr) {
		String url = "jdbc:mysql://localhost/lesson20xx?useSSL=false";
		String id = "root";
		String pw = "password";
		Connection cnct = null;
		Statement st = null;
		ResultSet rs = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			cnct = DriverManager.getConnection(url, id, pw);
			st = cnct.createStatement();
			String sql = sqlStr.substring(0,6);
			System.out.println(sql);
			if((sql.toUpperCase()).equals("SELECT")){
				rs = st.executeQuery(sqlStr);
			} else {
				st.executeUpdate(sqlStr);
			}
			return rs;
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return null;
	}
}
