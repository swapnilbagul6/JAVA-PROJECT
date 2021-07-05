package com.web.parent.repository;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

import org.springframework.stereotype.Repository;

import com.web.parent.entity.EmpEntity;

@Repository
public class EmpRepository {

	
	public ArrayList<EmpEntity> findAll() {
		Statement stmt = null;
		Connection con = null;
		ResultSet rs = null;
		ArrayList<EmpEntity> entity = new ArrayList<EmpEntity>();
		try {
			con = DbUtil();
			stmt = con.createStatement();
			rs = stmt.executeQuery("Select *from RESTDB.EMPLOYEE");

			if (rs != null) {
				while (rs.next()) {
					EmpEntity emp =new EmpEntity();
					emp.setEmpId(rs.getInt("EMPID"));
					emp.setEmpName(rs.getString("EMPNAME"));
					emp.setCompany(rs.getString("COMPANY"));
					emp.setPhoneNumber(rs.getString("PHONENUMBER"));
					entity.add(emp);
				}

			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
		}
		return entity;
	}

	public static Connection DbUtil() {
		Connection con = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/restdb", "root", "Root");
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}

		return con;
	}
	
}
