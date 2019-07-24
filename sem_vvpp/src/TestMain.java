import com.sun.org.apache.xpath.internal.operations.And;

import sem_vvpp.bean.User;
import sem_vvpp.dao.UserDAO;

public class TestMain {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		User user1 = new User();

		UserDAO udao = new UserDAO();
		String testName = "sun";
		String testPassword = "7891";
		user1 = udao.get(testName, testPassword);
		if (user1.getName().equals(testName) && user1.getPassword().equals(testPassword)) {
			System.out.println("登录成功！");
		}
		else {
			System.out.println("登录失败！");
		}
	}

}
