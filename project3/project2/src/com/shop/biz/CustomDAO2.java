package com.shop.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.shop.model.DBConn;
import com.shop.model.CustomVO;

public class CustomDAO2 {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public CustomVO getCustom(CustomVO vo) {
		CustomVO custom = null;
		try {
			con = DBConn.getConnection();
			String	sql = "select * from custom where cid = ? and cpw = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			stmt.setString(2, vo.getCpw());
			rs = stmt.executeQuery();
			custom = new CustomVO();
			if(rs.next()) {				
				custom.setCid(rs.getString("cid"));
				custom.setCpw(rs.getString("cpw"));
				custom.setCname(rs.getString("cname"));
				custom.setCzip(rs.getInt("czip"));
				custom.setCaddr1(rs.getString("caddr1"));
				custom.setCaddr2(rs.getString("caddr2"));
				custom.setCtel(rs.getInt("ctel"));
				custom.setCemail(rs.getString("cemail"));
				custom.setCbirth(rs.getInt("cbirth"));				
			} else {

			}	
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return custom;
	}
	public CustomVO myPage(CustomVO vo) {
		CustomVO custom = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from custom where cid = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			rs = stmt.executeQuery();
			if(rs.next()) {				
				custom = new CustomVO();
				custom.setCid(rs.getString("cid"));
				custom.setCpw(rs.getString("cpw"));
				custom.setCname(rs.getString("cname"));
				custom.setCzip(rs.getInt("czip"));
				custom.setCaddr1(rs.getString("caddr1"));
				custom.setCaddr2(rs.getString("caddr2"));
				custom.setCtel(rs.getInt("ctel"));
				custom.setCemail(rs.getString("cemail"));
				custom.setCbirth(rs.getInt("cbirth"));

			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return custom;
	}
	public int updateCustom(CustomVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update custom set cpw=?, cname=?, czip=?, caddr1=?, caddr2=?, ctel=?, cemail=?, cbirth=? where cid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCpw());
			stmt.setString(2, vo.getCname());
			stmt.setInt(3, vo.getCzip());
			stmt.setString(4, vo.getCaddr1());
			stmt.setString(5, vo.getCaddr2());
			stmt.setInt(6, vo.getCtel());
			stmt.setString(7, vo.getCemail());
			stmt.setInt(8, vo.getCbirth());
			stmt.setString(9, vo.getCid());

			cnt = stmt.executeUpdate();
			
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int addCustom(CustomVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into custom values (?, ?, ?, ?, ?, ?, ?, ?, ?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			stmt.setString(2, vo.getCpw());
			stmt.setString(3, vo.getCname());
			stmt.setInt(4, vo.getCzip());
			stmt.setString(5, vo.getCaddr1());
			stmt.setString(6, vo.getCaddr2());
			stmt.setInt(7, vo.getCtel());
			stmt.setString(8, vo.getCemail());
			stmt.setInt(9, vo.getCbirth());
			cnt = stmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int deleteCustom(CustomVO vo) {
		int cnt=0;
		try {
			con = DBConn.getConnection();
			String sql = "delete from custom where cid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			cnt = stmt.executeUpdate();
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int dupCheck(CustomVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "select * from custom where cid = ?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			rs = stmt.executeQuery();
			if(rs.next()) {
				cnt = 1;		//사용이 불가능한 아이디
			} else {
				cnt = 0;		//사용이 가능한 아이디
			}
		} catch(Exception e) {
			System.out.println("데이터를 비교하지 못했습니다.");
			e.printStackTrace();
		}
		return cnt;
	}
}
