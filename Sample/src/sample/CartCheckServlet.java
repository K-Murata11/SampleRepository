package sample;

import java.io.IOException;
import java.util.ArrayList;

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
		String next = req.getParameter("next");
		RequestDispatcher rd = null;
		HttpSession session = req.getSession(true);
		switch (next) {
		case ("購入") :
			rd = req.getRequestDispatcher("/cartcheck.jsp");
		break;
		case ("買い物を続ける") :
			session.removeAttribute("searchAL");
		rd = req.getRequestDispatcher("/carousel.jsp");
		break;
		case ("キャンセル") :
			session.removeAttribute("searchAL");
		session.removeAttribute("cartAL");
		rd = req.getRequestDispatcher("/carousel.jsp");
		break;
		case ("削除") :
			int detailInt = Integer.parseInt(req.getParameter("delete"));
		System.out.println(detailInt);
		ArrayList<Object> cartAL = (ArrayList) session.getAttribute("cartAL");
		System.out.println(cartAL.get(detailInt));
		cartAL.remove(detailInt);
		session.setAttribute("cartAL", cartAL);
		rd = req.getRequestDispatcher("/product.jsp");
		break;
		}
		rd.forward(req, resp);
	}
}
