package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.BasketDAO;
import com.shop.model.BasketVO;

@WebServlet("/GetUserBasketListCtrl")
public class GetUserBasketListCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String gcode = request.getParameter("gcode");
		String cid = request.getParameter("cid");
		String gprice = request.getParameter("gprice");
		
		BasketVO vo = new BasketVO();
		vo.setCid(cid);
		
		BasketDAO dao = new BasketDAO();
		ArrayList<BasketVO> basketList = new ArrayList<BasketVO>();
		basketList = dao.getUserBasketList(vo);
		
		if(basketList !=null) {
			request.setAttribute("basketList", basketList);
			RequestDispatcher view = request.getRequestDispatcher("/basket/getUserBasketList.jsp");
			view.forward(request, response);
		} else {
			response.sendRedirect("GetUserBasketListCtrl?cid="+cid);
		}
	}

}
