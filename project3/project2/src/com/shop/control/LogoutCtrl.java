package com.shop.control;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/LogoutCtrl")
public class LogoutCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String cid = (String) session.getAttribute("cid");
		String cname = (String) session.getAttribute("cname");
		if(cid!="") {
			session.invalidate();
		}
		response.sendRedirect("index.jsp");
	}

}
