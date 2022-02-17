package com.shop.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Date;

import com.shop.model.DBConn;
import com.shop.model.MegaphoneVO;

public class MegaphoneDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public ArrayList<MegaphoneVO> getMegaphoneList(){
		ArrayList<MegaphoneVO> megaphoneList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from magaphone order by midx desc";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			megaphoneList = new ArrayList<MegaphoneVO>();
			while(rs.next()) {
				int midx = rs.getInt("midx");
				String mname = rs.getString("mname");
				String mtitle = rs.getString("mtitle");
				String mcontent = rs.getString("mcontent");
				Date mregdate = rs.getDate("mregdate");
				int mvisited = rs.getInt("mvisited");

				MegaphoneVO megaphone = new MegaphoneVO();
				megaphone.setMidx(midx);
				megaphone.setMname(mname);
				megaphone.setMtitle(mtitle);
				megaphone.setMcontent(mcontent);
				megaphone.setMregdate(mregdate);
				megaphone.setMvisited(mvisited);
				megaphoneList.add(megaphone);
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
		return megaphoneList;
	}
	
	public MegaphoneVO getMegaphone(MegaphoneVO vo) {
		MegaphoneVO megaphone = null;
		try {
			con = DBConn.getConnection();
			String sql = "update megaphone set mvisited=mvisited+1 where midx=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getMidx());
			int cnt = stmt.executeUpdate();
			stmt.close();
			
			
			if(cnt>0) {
			sql = "select * from megaphone where midx=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getMidx());
			rs = stmt.executeQuery();
			if(rs.next()) {
				megaphone = new MegaphoneVO();
				megaphone.setMidx(rs.getInt("midx"));
				megaphone.setMname(rs.getString("mname"));
				megaphone.setMtitle(rs.getString("mtitle"));
				megaphone.setMcontent(rs.getString("mcontent"));
				megaphone.setMregdate(rs.getDate("mregdate"));
				megaphone.setMvisited(rs.getInt("mvisited"));
			}
		}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return megaphone;
	}
	public int updateMegaphone(MegaphoneVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update megaphone set mtitle=?, mcontent=? where midx=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getMtitle());
			stmt.setString(2, vo.getMcontent());
			stmt.setInt(3, vo.getMidx());
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int deleteMegaphone(MegaphoneVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "delete from megaphone where midx=?";
			stmt = con.prepareStatement(sql);
			stmt.setInt(1, vo.getMidx());
			cnt = stmt.executeUpdate();
						
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int addMegaphone(MegaphoneVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into megaphone values (megaphone_midx.nextval,?, ?, ?, sysdate, 0)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getMname());
			stmt.setString(2, vo.getMtitle());
			stmt.setString(3, vo.getMcontent());		
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
}
