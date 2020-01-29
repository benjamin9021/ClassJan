package com.naver;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import oracle.net.aso.d;
import oracle.net.aso.p;

public class MemberDAO {

	private DataSource datafactory;

	public MemberDAO() {
		try {
			Context ctx = new InitialContext();
			datafactory = (DataSource) ctx.lookup("java:comp/env/jdbc/oracle11g");
		} catch (NamingException e) {
			e.printStackTrace();
		}
	}

	public void closeAll(ResultSet rs, PreparedStatement pstmt, Connection conn) {
		try {
			if (rs != null) {
				rs.close();
			}
			if (pstmt != null) {
				pstmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public List<MemberDTO> list() {
		List<MemberDTO> list = new ArrayList<MemberDTO>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from member2";

		try {
			conn = datafactory.getConnection();
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while (rs.next()) {
				String id = rs.getString("id");
				String name = rs.getString("name");
				int age = rs.getInt("age");
				list.add(new MemberDTO(id, name, age));
			}
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);
		}

		return list;
	}

	public MemberDTO login(String id, int age) {
		MemberDTO dto = null;
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String sql = "select * from where id =?  and age = ? ";
		try {
			conn = datafactory.getConnection();
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, id);
			pstmt.setInt(2, age);
			rs = pstmt.executeQuery();
			if (rs.next()) {
				String name = rs.getString("name");
				dto = new MemberDTO(id, name, age);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			closeAll(rs, pstmt, conn);

		}

		return dto;
	}

}
