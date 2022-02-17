package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.BasketDAO;
import com.shop.model.BasketVO;

@WebServlet("/AddBasketCtrl")
public class AddBasketCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String gcode = request.getParameter("gcode");
		String cid = request.getParameter("cid");
		
		BasketVO vo = new BasketVO();
		vo.setGcode(gcode);
		vo.setCid(cid);
		vo.setValidity(1);
		vo.setBcnt(1);
		
		BasketDAO dao = new BasketDAO();
		int cnt = dao.addBasket(vo);
		
		if(cnt>0) {
			response.sendRedirect("GetUserBasketListCtrl?cid="+cid+"&gcode="+gcode);
		} else {
			response.sendRedirect("GetUserBasketListCtrl?cid="+cid);
		}
	}

}
