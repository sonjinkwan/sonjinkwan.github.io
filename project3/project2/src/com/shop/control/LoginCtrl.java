package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.biz.CustomDAO2;
import com.shop.model.CustomVO;

@WebServlet("/LoginCtrl")
public class LoginCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String cid = request.getParameter("cid");
		String cpw = request.getParameter("cpw");
		String cname = request.getParameter("cname");
		
		
		CustomVO vo = new CustomVO();
		vo.setCid(cid);
		vo.setCpw(cpw);
		vo.setCname(cname);
		
		CustomVO custom = new CustomVO();
		CustomDAO2 dao = new CustomDAO2();

		custom = dao.getCustom(vo);
		HttpSession session = request.getSession();
		if(custom.getCid()!= null) {
			session.setAttribute("cid",custom.getCid());
			session.setAttribute("cname",custom.getCname());
			session.setAttribute("ctel",custom.getCtel());
			session.setAttribute("cemail",custom.getCemail());
			session.setAttribute("czip",custom.getCzip());
			session.setAttribute("caddr1",custom.getCaddr1());
			session.setAttribute("caddr2",custom.getCaddr2());
			
			if(custom.getCid().equals("admin") && custom.getCpw().equals("1234")) {
				response.sendRedirect("admin.jsp");
			}else {
				response.sendRedirect("index.jsp");
			}
			}else {
				response.sendRedirect("login.jsp");
			}
		}
}
