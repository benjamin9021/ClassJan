package com.naver;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.Statement;

public class MemberDAO {
	private static final String DRIVE = "oracle.jdbc.driver.OracleDriver";
	private static final String URL = "jdbc:oracle:thin:@localhost:1521:xe";
	private static final String USER = "ca2";
	private static final String PASS = "ca2";

	public MemberDAO() {
		try {
			Class.forName(DRIVE);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
	}

	public void insert2(MemberDTO dto) {

		Connection conn = null;
		Statement st = null;
		String sql = "insert into from member values('" + dto.getId() + "','" + dto.getName() + "," + dto.getAge()
				+ ")";

		try {
			conn = DriverManager.getConnection(URL, USER, PASS);
			st = conn.createStatement();
			st.executeUpdate(sql);
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (st != null) {
					st.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}

	public void insert(MemberDTO dto) {

		Connection conn = null;
		PreparedStatement pstmt = null;
		String sql = "insert into member2 values (?, ?, ?)";

		try {
			conn = DriverManager.getConnection(URL, USER, PASS);
			System.out.println("connection 생성");

			pstmt = conn.prepareStatement(sql);

			pstmt.setString(1, dto.getId());
			pstmt.setString(2, dto.getName());
			pstmt.setInt(3, dto.getAge());

			pstmt.executeUpdate();

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (pstmt != null) {
					pstmt.close();
				}
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}
}