package com.shop.control;

import java.io.IOException;
import java.util.Enumeration;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import com.shop.biz.BoardDAO;
import com.shop.model.BoardVO;
//글쓰기
@WebServlet("/AddBoardCtrl")
public class AddBoardCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // 업로드 파일 사이즈
        int fileSize= 5*1024*1024;
        // 업로드될 폴더 경로
        //String saveDirectory = request.getServletContext().getRealPath("/upload");  //상대경로 설정시

        try {
            
            // 파일업로드 
            //MultipartRequest multi = new MultipartRequest(request, saveDirectory, fileSize, "utf-8", new DefaultFileRenamePolicy());
        	 //상대경로
            //String saveDirectory = request.getServletContext().getRealPath("/upload"); 
        	//절대경로
			String saveDirectory = "D:\\KTM\\eclipse_jsp2\\web04\\WebContent\\img";
			MultipartRequest multi = new MultipartRequest(request, saveDirectory, fileSize, "utf-8");		//덮어쓰기
            // 파일이름 가져오기
            String fileName = "";
            Enumeration<String> names = multi.getFileNames();
            if(names.hasMoreElements()) {
                String name = names.nextElement();
                fileName = multi.getFilesystemName(name);
            }
            
            BoardDAO dao = new BoardDAO();
            BoardVO board = new BoardVO();
            
            board.setNum(dao.getSeq()); // 시퀀스값 가져와 세팅
            board.setId(multi.getParameter("board_id")); // 히든값
            board.setSubject(multi.getParameter("board_subject"));
            board.setContent(multi.getParameter("board_content"));
            board.setFile(multi.getParameter("board_file"));
        
    		int cnt = dao.addBoard(board);
    		
    		if(cnt != 0) {
    			response.sendRedirect("GetBoardListCtrl");
    		} else {
    			response.sendRedirect("addBoard.jsp");
    		} 
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("글 작성 오류 : " + e.getMessage());
        }
	}
}