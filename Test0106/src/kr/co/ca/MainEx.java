package kr.co.ca;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MainEx {

	public static void main(String[] args) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); //driver.은 없애도 된다. 패키지안에 있기때문
			System.out.println("드라이버 로딩 성공");  // memberdao 에 default생성자 안에 입력
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}//db드라이버 만들때 객체 생성 방법
		
		String URL = "jdbc:oracle:thin:@localhost:1521:xe"; // memberdao에 스태틱 상수로 선언
		String USER = "ca";
		String PASSWORD = "ca";
		
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("connetcion 생성");
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (conn != null) {
					conn.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
		// 매 기능 마다 열고 닫고 해야한다. insert, select, update, delete  작업마다 
	}
	

	
}
