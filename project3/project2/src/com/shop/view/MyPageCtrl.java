package com.shop.view;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.shop.biz.CustomDAO2;
import com.shop.model.CustomVO;

@WebServlet("/MyPageCtrl")
public class MyPageCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		HttpSession session = request.getSession();
		String cid = request.getParameter("cid");
		
		CustomVO vo = new CustomVO();
		vo.setCid(cid);
		
		CustomDAO2 dao = new CustomDAO2();

		CustomVO custom = new CustomVO();
		custom = dao.myPage(vo);
		if(custom.getCid() == null) {
			response.sendRedirect("login.jsp");
		} else {
			request.setAttribute("custom", custom);
			RequestDispatcher view = request.getRequestDispatcher("mypage.jsp");
			view.forward(request, response);

		}
		}
	}