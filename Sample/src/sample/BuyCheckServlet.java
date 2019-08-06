package sample;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class BuyCheckServlet extends HttpServlet {
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String text = req.getParameter("check");
		System.out.println(text);

		HttpSession session = req.getSession();

		if(text.equals("はい")) {
			ArrayList<Object> cartAL = (ArrayList<Object>)session.getAttribute("cartAL");
			for (int i = 0; i < cartAL.size(); i++) {

				ArrayList<Object> itemsAL = (ArrayList<Object>) cartAL.get(i);
				int stockNo = (int)itemsAL.get(2);
				int cartQty = (int)itemsAL.get(7);

				String sqlStr = "UPDATE product SET stock_no = " + (stockNo - cartQty) + " WHERE pro_cd = " + itemsAL.get(0) +";";
				System.out.println(sqlStr);
				JdbcConnection.connection(sqlStr);

			}
			session.removeAttribute("cartAL");
			RequestDispatcher rd = req.getRequestDispatcher("/finish.jsp");
			rd.forward(req, resp);
		} else if(text.equals("いいえ")) {
			session.removeAttribute("searchAL");
			RequestDispatcher rd = req.getRequestDispatcher("/carousel.jsp");
			rd.forward(req, resp);
		} else {
			System.out.println("予期せぬエラーが発生しました");
		}
	}
}
