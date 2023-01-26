package com.schoolmanagement.dao;

import java.sql.*;

import com.schoolmanagement.entities.Section;

public class SectionDoa {
	private Connection con;

	public SectionDoa(Connection con) {
		this.con = con;
	}

	public boolean addSection(Section section) {
		boolean f = false;
		try {
			String query = "insert into section(section) values(?)";
			PreparedStatement pstm = this.con.prepareStatement(query);
			pstm.setString(1, section.getSection());
			pstm.executeUpdate();
			f = true;
		} catch (Exception e) {
			e.printStackTrace();
		}
		return f;
	}
}
