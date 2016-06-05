package com.bm.service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.bm.conn.conn;
import com.bm.model.SoftwareInputModel;

public class softwareservice {
	private Connection connection;
	private PreparedStatement pstmt;
	
	public softwareservice(){
		connection=new conn().getcon();
	}
	
	//获取所有软件名
	public List<String> softwareList(){
		List<String> softwareList=new ArrayList<String>();
		String  sql="select software_Name from Software_Info";
		try {
			pstmt=connection.prepareStatement(sql);
			ResultSet resultSet=pstmt.executeQuery();
			while (resultSet.next()) {
				softwareList.add(resultSet.getString(1));				
			}
			return softwareList;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}
			
	}
	
	//增加软件信息
	public boolean addSoftware(SoftwareInputModel softwareInputModel){
		String sql="insert into Software_Info(software_Name,software_Version,software_Desc) values(?,?,?)";
		try {
			pstmt=connection.prepareStatement(sql);
			pstmt.setString(1, softwareInputModel.getSoftware_Name());
			pstmt.setString(2, softwareInputModel.getSoftware_Version());
			pstmt.setString(3, softwareInputModel.getSoftware_Desc());
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	//删除软件信息
	public boolean delSoftware(int id){
		String sql="delete * from Software_Info where software_Id=?";
		try {
			pstmt=connection.prepareStatement(sql);
			pstmt.setInt(1, id);
			pstmt.executeUpdate();
			return true;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return false;
		}
		
	}
	//修改软件信息
	
	//查询软件信息
	public List<SoftwareInputModel> querySoftware(){
		List<SoftwareInputModel> querysoftware=new ArrayList<SoftwareInputModel>();
		String sql="select * from Software_info";
		try {
			pstmt=connection.prepareStatement(sql);
			ResultSet resultSet=pstmt.executeQuery();
			while (resultSet.next()) {
				SoftwareInputModel software=new SoftwareInputModel();
				software.setSoftware_Id(resultSet.getInt(1));
				software.setSoftware_Name(resultSet.getString(2));
				software.setSoftware_Version(resultSet.getString(3));
				querysoftware.add(software);
			}
			return querysoftware;
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			return null;
		}		
		
	}
}
