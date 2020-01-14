package kr.co.ca;

public class MainEx2 {

	public static void main(String[] args) {
		
		MemberDTO dto = new MemberDTO("y001", "kim", 33);
		
		MemberDAO dao = new MemberDAO();
		
		dao.insert(dto);
		
		
		
		
	}
	
}
