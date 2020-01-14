package kr.co.ca;

import java.io.File;
import java.util.ArrayList;

public class MainEx7 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub

		File myDir  = new File("C:"+File.separator);
		File[] list = myDir.listFiles();
		ArrayList<String> dirlist = new ArrayList<String>();
		ArrayList<String> fileList = new ArrayList<String>();
//		for (int i = 0; i < list.length; i++) {
//			File f = list [i];
//		}
		for (File f : list) {
			System.out.println(f.getName());
			
			if (f.isDirectory()) {
				dirlist.add(f.getName());
//				System.out.println("\t \t DIR");
			}else {
				fileList.add(f.getName());
//				System.out.println("\t \t FILE");
			}
		
		}
		
	}

}
