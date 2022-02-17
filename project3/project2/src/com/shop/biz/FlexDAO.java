package com.shop.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shop.model.DBConn;
import com.shop.model.FlexVO;

public class FlexDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public int addFlex(FlexVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into flex values (flex_fcode.nextval, ?, ?, ?, ?, ?, ?, ?, sysdate)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			stmt.setString(2, vo.getGcode());
			stmt.setInt(3, vo.getBcnt());
			stmt.setString(4, vo.getFway());
			stmt.setString(5, vo.getFbank());
			stmt.setString(6, vo.getFaccount());
			stmt.setString(7, vo.getFpw());
			cnt = stmt.executeUpdate();
			System.out.println(sql);
		} catch (Exception e) {
			
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public ArrayList<FlexVO> getFlexList(){
		ArrayList<FlexVO> flexList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from flex";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			flexList = new ArrayList<FlexVO>();
			while(rs.next()) {
				String fcode = rs.getString("fcode");
				String cid = rs.getString("cid");
				String gcode = rs.getString("gcode");
				int bcnt = rs.getInt("bcnt");
				String fway = rs.getString("fway");
				String fbank = rs.getString("fbank");
				String faccount = rs.getString("faccount");
				String fpw = rs.getString("fpw");
				
				FlexVO flex = new FlexVO();
				flex.setFcode(fcode);
				flex.setCid(cid);
				flex.setGcode(gcode);
				flex.setBcnt(bcnt);
				flex.setFway(fway);
				flex.setFbank(fbank);
				flex.setFaccount(faccount);
				flex.setFpw(fpw);
				flexList.add(flex);
			}
		} catch (Exception e) {
			
		}finally {
			DBConn.close(rs, stmt, con);
		}
		return flexList;
	}
}
