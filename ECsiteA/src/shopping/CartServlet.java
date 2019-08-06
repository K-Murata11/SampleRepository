package shopping;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class CartServlet extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("UTF-8");
		HttpSession session = req.getSession();
		@SuppressWarnings("unchecked")
		ArrayList<Object> detailAL = (ArrayList<Object>)session.getAttribute("detailAL");

		int quantity = Integer.parseInt(req.getParameter("quantity"));

		if(session.getAttribute("cartAL") == null) {
			ArrayList<Object> cartAL = new ArrayList<Object>();
			detailAL.add(quantity);
			cartAL.add(detailAL);
			session.setAttribute("cartAL", cartAL);
		} else {
			@SuppressWarnings("unchecked")
			ArrayList<Object> cartAL = (ArrayList<Object>)session.getAttribute("cartAL");
			boolean flag = true;
			for(int i = 0; i < cartAL.size(); i++) {
				ArrayList<Object> itemsAL = (ArrayList<Object>) cartAL.get(i);

				String detailID = (String) detailAL.get(0);
				String itemsID = (String) itemsAL.get(0);

				int itemsQty = (int) itemsAL.get(8);

				if (detailID.equals(itemsID)) {
					quantity += itemsQty;
					itemsAL.set(8, quantity);
					cartAL.set(i, itemsAL);
					flag = false;
					break;
				}
			}
			if(flag) {
				detailAL.add(quantity);
				cartAL.add(detailAL);
			}
			session.setAttribute("cartAL", cartAL);
		}
		RequestDispatcher rd = req.getRequestDispatcher("/Cart.jsp");
		rd.forward(req, resp);
	}
}
