package shopping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartCheckServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		String text = req.getParameter("next");
		if(text.equals("購入")) {
			RequestDispatcher rd = req.getRequestDispatcher("/CartCheck.jsp");
			rd.forward(req, resp);

		} else if(text.equals("買い物を続ける")) {
			HttpSession session = req.getSession(true);
			session.removeAttribute("searchAL");
			RequestDispatcher rd = req.getRequestDispatcher("/Search.jsp");
			rd.forward(req, resp);
		} else {
			System.out.println("予期せぬエラーが発生しました");
		}
	}
}
