package com.bm.service;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bm.conn.conn;
import com.bm.model.BugInputModel;

public class bugservice {
	private Connection connection;
	private java.sql.PreparedStatement pstmt;
	
	public bugservice() {
		connection=new conn().getcon();
	}
	
	public boolean addBug(BugInputModel bugInputModel){
		try {
			String sql="insert into Bug_Info"
					+"(bug_Finder,bug_Time,bug_Name,bug_From,bug_Fromv,bug_Level,bug_Type,bug_Desc)"
					+"values(?,?,?,?,?,?,?,?)";
			pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, bugInputModel.getBug_Finder());
			pstmt.setString(2, bugInputModel.getBug_Time());
			pstmt.setString(3, bugInputModel.getBug_Name());
			pstmt.setString(4, bugInputModel.getBug_From());
			pstmt.setString(5, bugInputModel.getBug_Fromv());
			pstmt.setString(6, bugInputModel.getBug_Level());
			pstmt.setString(7, bugInputModel.getBug_Type());
			pstmt.setString(8, bugInputModel.getBug_Desc());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}	
	}
	
	public boolean delBug(int id) {
		try {
			String sql="delete from Bug_Info where bug_Id=?";
			pstmt=connection.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;			
		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
			return false;
		}
	}
	
	
	
	public List<BugInputModel> queryBug(){
		List<BugInputModel> queryBugs=new ArrayList<BugInputModel>() ;
		try {
			String sql="select * from Bug_Info";
			pstmt=connection.prepareStatement(sql);
			ResultSet resultSet=pstmt.executeQuery();
			while (resultSet.next()) {
				BugInputModel bugQuery=new BugInputModel();
				bugQuery.setBug_Id(resultSet.getInt(1));
				bugQuery.setBug_Finder(resultSet.getString(2));
				bugQuery.setBug_Name(resultSet.getString(3));
				bugQuery.setBug_From(resultSet.getString(4));
				bugQuery.setBug_Fromv(resultSet.getString(5));
				bugQuery.setBug_Level(resultSet.getString(6));
				bugQuery.setBug_Type(resultSet.getString(7));
				bugQuery.setBug_Desc(resultSet.getString(8));
				queryBugs.add(bugQuery);
			}
			return queryBugs;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return null;
	}
	
	public BugInputModel editBugByID(int id){
		try {
			String sql="select * from Bug_Info where bug_Id=?";
			pstmt=connection.prepareStatement(sql);
			pstmt.setInt(1, id);
			ResultSet resultSet=pstmt.executeQuery();
			if (resultSet.next()) {
				BugInputModel bugEdit=new BugInputModel();
				bugEdit.setBug_Id(resultSet.getInt(1));
				bugEdit.setBug_Finder(resultSet.getString(2));
				bugEdit.setBug_Name(resultSet.getString(3));
				bugEdit.setBug_From(resultSet.getString(4));
				bugEdit.setBug_Fromv(resultSet.getString(5));
				bugEdit.setBug_Level(resultSet.getString(6));
				bugEdit.setBug_Type(resultSet.getString(7));
				bugEdit.setBug_Desc(resultSet.getString(8));
				return bugEdit;
			}
			else {
				return null;
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
		
	}
	
	
	
}
