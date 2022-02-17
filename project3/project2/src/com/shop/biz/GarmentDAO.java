package com.shop.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shop.model.DBConn;
import com.shop.model.GarmentVO;

public class GarmentDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public ArrayList<GarmentVO> getGarmentList(){
		ArrayList<GarmentVO> garmentList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from garment order by gcode";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			garmentList = new ArrayList<GarmentVO>();
			while(rs.next()) {
				String gtype = rs.getString("gtype");
				String gcode = rs.getString("gcode");
				String gname = rs.getString("gname");
				int gprice = rs.getInt("gprice");
				int gcnt = rs.getInt("gcnt");
				String gsize = rs.getString("gsize");
				String gimg = rs.getString("gimg");
				
				GarmentVO gar = new GarmentVO();
				gar.setGtype(gtype);
				gar.setGcode(gcode);
				gar.setGname(gname);
				gar.setGprice(gprice);
				gar.setGcnt(gcnt);
				gar.setGsize(gsize);
				gar.setGimg(gimg);
				garmentList.add(gar);
			}
			return garmentList;
		} catch(Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return garmentList;
	}
	public GarmentVO getGarment(GarmentVO vo) {
		GarmentVO gar = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from garment where gcode=?";
			stmt= con.prepareStatement(sql);
			stmt.setString(1, vo.getGcode());
			rs = stmt.executeQuery();
			if (rs.next()) {
				gar = new GarmentVO();
				gar.setGtype(rs.getString("gtype"));
				gar.setGcode(rs.getString("gcode"));
				gar.setGname(rs.getString("gname"));
				gar.setGprice(rs.getInt("gprice"));
				gar.setGcnt(rs.getInt("gcnt"));
				gar.setGsize(rs.getString("gsize"));
				gar.setGimg(rs.getString("gimg"));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return gar;
	}
	public int updateGarment(GarmentVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql ="update garment set gtype=?, gname=?, gprice=?, gcnt=?, gsize=?, gimg=? where gcode=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getGtype());
			stmt.setString(2, vo.getGname());
			stmt.setInt(3, vo.getGprice());
			stmt.setInt(4, vo.getGcnt());
			stmt.setString(5, vo.getGsize());
			stmt.setString(6, vo.getGimg());
			stmt.setString(7, vo.getGcode());
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int deleteGarment(GarmentVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "delete from garment where gcode=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getGcode());
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
		
	}
	public int addGarment(GarmentVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into garment values (?, ?, ?, ?, ?, ?, ?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getGtype());
			stmt.setString(2, vo.getGcode());
			stmt.setString(3, vo.getGname());
			stmt.setInt(4, vo.getGprice());
			stmt.setInt(5, vo.getGcnt());
			stmt.setString(6, vo.getGsize());
			stmt.setString(7, vo.getGimg());
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
		
	}
}
