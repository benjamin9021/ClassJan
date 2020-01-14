package kr.co.ca;

import java.io.File;

public class MainEx8 {

	public static void main(String[] args) {

		File f = new File("AAA"); //정품인증떄문에 폴더 생성안됨.
//		
//		String ap  = f.getAbsolutePath(); 
//		System.out.println(ap);
		if (f.exists()) {
			System.out.println("already existed.");
		}else {
			f.mkdir();
//			System.out.println("not existed.");
		}
	}

}
