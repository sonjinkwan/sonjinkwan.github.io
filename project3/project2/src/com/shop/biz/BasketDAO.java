package com.shop.biz;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.shop.model.BasketVO;
import com.shop.model.DBConn;

public class BasketDAO {
	private Connection con = null;
	private PreparedStatement stmt = null;
	private ResultSet rs = null;
	
	public ArrayList<BasketVO> getUserBasketList(BasketVO vo){
		ArrayList<BasketVO> basketList = null;
		try {
			con = DBConn.getConnection();
			String sql = "select * from basket";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			basketList = new ArrayList<BasketVO>();
			while(rs.next()) {
				String bid = rs.getString("bid");
				String cid = rs.getString("cid");
				String gcode = rs.getString("gcode");
				int bcnt = rs.getInt("bcnt");
				int validity = rs.getInt("validity");
				
				BasketVO basket = new BasketVO();
				basket.setBid(bid);
				basket.setCid(cid);
				basket.setGcode(gcode);
				basket.setBcnt(bcnt);
				basket.setValidity(validity);
				basketList.add(basket);
			}
		} catch (Exception e) {
			
		} finally {
			DBConn.close(rs, stmt, con);
		}
		return basketList;
	}
	public int updateBasket(BasketVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "update basket set bcnt=? where cid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			cnt = stmt.executeUpdate();
		} catch(Exception e) {
			
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int deleteBasket(BasketVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "delete from basket where cid=?";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
	}
	public int addBasket(BasketVO vo) {
		int cnt = 0;
		try {
			con = DBConn.getConnection();
			String sql = "insert into basket values (bid_seq.nextval, ?, ?, ?, ?)";
			stmt = con.prepareStatement(sql);
			stmt.setString(1, vo.getCid());
			stmt.setString(2, vo.getGcode());
			stmt.setInt(3, vo.getBcnt());
			stmt.setInt(4, vo.getValidity());
			cnt = stmt.executeUpdate();
		} catch (Exception e) {
			
		} finally {
			DBConn.close(stmt, con);
		}
		return cnt;
		
	}
}
