package kr.co.ca;

import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;

public class MainEx {
	
	public static void main(String[] args) {
		
		File f = new File("C:" + File.separator+ "obj.dat");
		
		InputStream in = null;
		
		try {
			in = new FileInputStream(f);
		} catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if (in != null) {
					in.close();
				}
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		
	}
	
}
