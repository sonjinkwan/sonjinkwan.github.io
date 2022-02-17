package com.shop.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shop.model.DBConn;
import com.shop.model.CustomVO;

public class CustomDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public ArrayList<CustomVO> getCustomList(){
		ArrayList<CustomVO> customList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from custom order by cid";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			customList = new ArrayList<CustomVO>();
			while(rs.next()) {
				String cid = rs.getString("cid");
				String cpw = rs.getString("cpw");
				String cname = rs.getString("cname");
				int czip = rs.getInt("czip");
				String caddr1 = rs.getString("caddr1");
				String caddr2 = rs.getString("caddr2");
				int ctel = rs.getInt("ctel");
				String cemail = rs.getString("cemail");
				int cbirth = rs.getInt("cbirth");
				
				CustomVO custom = new CustomVO();
				custom.setCid(cid);
				custom.setCpw(cpw);
				custom.setCname(cname);
				custom.setCzip(czip);
				custom.setCaddr1(caddr1);
				custom.setCaddr2(caddr2);
				custom.setCtel(ctel);
				custom.setCemail(cemail);
				custom.setCbirth(cbirth);
				customList.add(custom);
			}
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return customList;
	}
	public CustomVO getCustom(CustomVO vo) {
		CustomVO custom = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from custom where cid=?";
			stmt= con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			rs = stmt.executeQuery();
			if (rs.next()) {
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
		} catch (Exception e) {
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
			String sql ="update custom set cpw=?, cname=?, czip=?, caddr1=?, caddr2=?, ctel=?, cemail=?, cbirth=? where cid=?";
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
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int deleteCustom(CustomVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "delete from custom where cid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
		
	}

}
