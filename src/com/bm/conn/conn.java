package com.bm.conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class conn {
	private static String DBDRIVER="com.mysql.jdbc.Driver";
	private static String DBURL="jdbc:mysql://localhost/BugManager?useUnicode=true&characterEncoding=utf-8&useSSL=false";
	private static String DBUSER="root";
	private static String DBPASSWORD="qazwsx";
	
	public Connection getcon()
	{
		try {
			Class.forName(DBDRIVER);
			Connection conn=DriverManager.getConnection(DBURL, DBUSER, DBPASSWORD);
			System.out.println(conn.getMetaData().getURL());
			return conn;
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
			return null;
		}
	}
	
}
