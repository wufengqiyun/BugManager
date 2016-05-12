package com.bm.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.bm.conn.conn;
import com.bm.model.userModel;


public class userservice {
	private Connection connection;
	private java.sql.PreparedStatement pstmt;
	public userservice() {
		connection = new conn().getcon();
	}
	
	public boolean validate(userModel user)
	{
		try {
			pstmt=connection.prepareStatement("select * from User where userID=? and userPassword=?");
			pstmt.setString(1, user.getUserID());
			pstmt.setString(2, user.getUserPassword());
			
			ResultSet rs=pstmt.executeQuery();
			if (rs.next()) {
				return true;
			}
				else {
					return false;
				}
			
		} catch (SQLException e) {
			e.printStackTrace();
			return false;
		}
	}
	
	
}
