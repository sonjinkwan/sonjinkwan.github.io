package com.shop.control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.shop.biz.QnaDAO;
import com.shop.model.QnaVO;

@WebServlet("/AddQnaCtrl")
public class AddQnaCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html; charset=UTF-8");
		request.setCharacterEncoding("UTF-8");
		
		String author = request.getParameter("author");
		String title = request.getParameter("title");
		String content = request.getParameter("content");
		
		QnaVO vo = new QnaVO();
		vo.setAuthor(author);
		vo.setTitle(title);
		vo.setContent(content);
		
		QnaDAO dao = new QnaDAO();
		int cnt = dao.addQna(vo);
		
		if(cnt!=0) {
			response.sendRedirect("GetQnaListCtrl");
		} else {
			response.sendRedirect("/qna/addQna.jsp");
		}
			
	}

}
