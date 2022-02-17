package com.shop.model;
import java.sql.*;
public class DBTest1 {
	private static Connection con = null;
	private static PreparedStatement stmt = null;
	private static ResultSet rs =  null;
	public static void main(String[] args) {
		try {
			con = DBConn.getConnection();
			String sql = "select * from custom";
			stmt = con.prepareStatement(sql);
			rs = stmt.executeQuery();
			while(rs.next()) {
				System.out.println("이름"+rs.getString("name"));
			}
			DBConn.close(rs, stmt, con);
		} catch (Exception e) {
			e.printStackTrace();
		}

	}

}
