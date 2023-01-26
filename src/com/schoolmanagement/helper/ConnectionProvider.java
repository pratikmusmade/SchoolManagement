package com.schoolmanagement.helper;

import java.sql.*;

public class ConnectionProvider {
	private static Connection con;

	public static Connection getConnection() {
		try {

			if (con == null) {
				Class.forName("com.mysql.jdbc.Driver");
				con = DriverManager.getConnection("jdbc:mysql://localhost:3306/schoolmanagementdb?characterEncoding=utf8", "root", "root");
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return con;
	}
}
