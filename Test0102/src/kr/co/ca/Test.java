package kr.co.ca;

import java.io.File;

public class Test {

	public void me6() {
		File from = new File("C:"+File.separator+"dos.dat");
		File to = new File("C:"+File.separator+"AAA"+File.separator+"dos.dat");
		from.renameTo(to);
	}
	
	public void me5() {
		File f = new File("C:"+File.separator+"obj.dat");
		
		File to = new File("C:"+File.separator+"dos.dat");
		
		f.renameTo(to);
		
	}
	
//	public void me4() {
//		File f = new File("C:"+File.separator+"test.png");
//		if (f.exists()) {
//			f.delete();
//		}
//	}
//	
//	public void me3() {
//		
//		File f = new File("C:" + File.separator+"AAA");
//		if (f.exists()) {
//			f.delete();
//		}
//	}
	
	public void me2() {
		
		File f = new File("C:" + File.separator+"AAA");
		if (!f.exists()) {
			f.mkdir();
		}else {
			System.out.println("이미 존재합니다.");
		}
	}
}
