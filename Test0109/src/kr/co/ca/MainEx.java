package kr.co.ca;

public class MainEx {

	public static void main(String[] args) {

		BankDAO dao = new BankDAO();
		dao.transfer("b002", "b001", 1000);
	}

}
