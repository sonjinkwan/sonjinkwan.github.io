package com.shop.view;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.QnaDAO;
import com.shop.model.QnaVO;

@WebServlet("/GetQnaCtrl2")
public class GetQnaCtrl2 extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {    
		response.setContentType("text/html; charset=UTF-8");
	    request.setCharacterEncoding("UTF-8");
		int idx = Integer.parseInt(request.getParameter("idx"));
	    
	    QnaVO vo = new QnaVO();
	    vo.setIdx(idx);
	    
	    QnaDAO dao = new QnaDAO();
	    QnaVO qna = dao.getQna(vo);
	    
	    if(qna !=null) {
	    	request.setAttribute("qna", qna);
	    	RequestDispatcher view = request.getRequestDispatcher("/qna/getQna2.jsp");
	    	view.forward(request, response);
	    } else {
	    	response.sendRedirect("GetQnaListCtrl");
	    }
	}

}
