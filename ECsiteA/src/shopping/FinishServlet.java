package shopping;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class FinishServlet extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {


		//UTF-8国際化対応設定、全世界通用文字コード
		req.setCharacterEncoding("UTF-8");

		/*既存があれば既存のオブジェクトをを返す
		 * 既存がなければ、新規しません。*/
		HttpSession session = req.getSession(false);

		String jspnext = req.getParameter("next");
		if(jspnext.equals("買い物を続ける")) {
			session.removeAttribute("searchAL");
			RequestDispatcher rd = req.getRequestDispatcher("Search.jsp");
			rd.forward(req, resp);

		}else if(jspnext.equals("ログアウト")){


			/*Server上sessionが空白ではない場合、
			 * Sessionを解除(Unbound)させる。*/
			if (session != null) {
				//sessionがnullではない場合はsession終了
				session.invalidate();
			}

			RequestDispatcher rd = req.getRequestDispatcher("Login.jsp");
			rd.forward(req, resp);

		}


}
}

