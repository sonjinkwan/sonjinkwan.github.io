package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.CustomDAO;
import com.shop.model.CustomVO;

@WebServlet("/UpdateCustomCtrl")
public class UpdateCustomCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String cid = request.getParameter("cid");
		String cpw = request.getParameter("cpw");
		String cname = request.getParameter("cname");
		int czip = Integer.parseInt(request.getParameter("czip"));
		String caddr1 = request.getParameter("caddr1");
		String caddr2 = request.getParameter("caddr2");
		int ctel = Integer.parseInt(request.getParameter("ctel"));
		String cemail = request.getParameter("cemail");
		int cbirth = Integer.parseInt(request.getParameter("cbirth"));
		
		CustomVO vo = new CustomVO();
		vo.setCid(cid);
		vo.setCpw(cpw);
		vo.setCname(cname);
		vo.setCzip(czip);
		vo.setCaddr1(caddr1);
		vo.setCaddr2(caddr2);
		vo.setCtel(ctel);
		vo.setCemail(cemail);
		vo.setCbirth(cbirth);
		
		
		CustomDAO dao = new CustomDAO();
		int cnt = dao.updateCustom(vo);
		if(cnt>0) response.sendRedirect("GetCustomListCtrl");
		
	}
}
