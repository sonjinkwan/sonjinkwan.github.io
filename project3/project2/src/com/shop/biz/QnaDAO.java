package com.shop.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.shop.model.DBConn;
import com.shop.model.QnaVO;

public class QnaDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public ArrayList<QnaVO> getQnaList(){
		ArrayList<QnaVO> qnaList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from qna order by idx desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			qnaList = new ArrayList<QnaVO>();
			while(rs.next()) {
				int idx = rs.getInt("idx");
				String author = rs.getString("author");
				String title = rs.getString("title");
				String content = rs.getString("content");
				Date regdate = rs.getDate("regdate");
				int visited = rs.getInt("visited");

				QnaVO qna = new QnaVO();
				qna.setIdx(idx);
				qna.setAuthor(author);
				qna.setTitle(title);
				qna.setContent(content);
				qna.setRegdate(regdate);
				qna.setVisited(visited);
				qnaList.add(qna);
			}
			
		} catch (ClassNotFoundException e) {			
			System.out.println("드라이버 로딩이 되지 않았습니다.");
			e.printStackTrace();
		} catch (SQLException e) {
			System.out.println("SQL 구문 또는 열 이름, 변수명 등이 맞지 않습니다.");
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return qnaList;
	}
	
	public QnaVO getQna(QnaVO vo) {
		QnaVO qna = null;
		try {
			con = DBConn.getConnection();
			String sql = "update qna set visited=visited+1 where idx=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getIdx());
			int cnt = stmt.executeUpdate();
			stmt.close();
			
			
			if(cnt>0) {
			sql = "select * from qna where idx=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getIdx());
			rs = stmt.executeQuery();
			if(rs.next()) {
				qna = new QnaVO();
				qna.setIdx(rs.getInt("idx"));
				qna.setAuthor(rs.getString("author"));
				qna.setTitle(rs.getString("title"));
				qna.setContent(rs.getString("content"));
				qna.setRegdate(rs.getDate("regdate"));
				qna.setVisited(rs.getInt("visited"));
			}
		}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return qna;
	}
	public int updateQna(QnaVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update qna set title=?, content=? where idx=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getTitle());
			stmt.setString(2, vo.getContent());
			stmt.setInt(3, vo.getIdx());
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int deleteQna(QnaVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "delete from qna where idx=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getIdx());
			cnt = stmt.executeUpdate();
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int addQna(QnaVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into qna values (qna_idx.nextval,?, ?, ?, sysdate, 0)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getAuthor());
			stmt.setString(2, vo.getTitle());
			stmt.setString(3, vo.getContent());		
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
}
