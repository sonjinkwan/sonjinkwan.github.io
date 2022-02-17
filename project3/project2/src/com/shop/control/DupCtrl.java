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

@WebServlet("/DupCtrl")
public class DupCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		String cid = request.getParameter("cid");
		if(cid==null) {
			response.sendRedirect("idCheck.jsp?pass=1");	
		}
		CustomVO vo = new CustomVO();
		vo.setCid(cid);
		
		CustomDAO2 dao = new CustomDAO2();

		int cnt = dao.dupCheck(vo);
		response.sendRedirect("idCheck.jsp?pass="+cnt);
	}
}