package kr.co.ca;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MainEx {

	public static void main(String[] args) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); //driver.�� ���ֵ� �ȴ�. ��Ű���ȿ� �ֱ⶧��
			System.out.println("����̹� �ε� ����");  // memberdao �� default������ �ȿ� �Է�
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}//db����̹� ���鶧 ��ü ���� ���
		
		String URL = "jdbc:oracle:thin:@localhost:1521:xe"; // memberdao�� ����ƽ ����� ����
		String USER = "ca";
		String PASSWORD = "ca";
		
		Connection conn = null;
		try {
			conn = DriverManager.getConnection(URL, USER, PASSWORD);
			System.out.println("connetcion ����");
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
		
		// �� ��� ���� ���� �ݰ� �ؾ��Ѵ�. insert, select, update, delete  �۾����� 
	}
	

	
}
