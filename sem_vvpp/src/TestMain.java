import java.util.ArrayList;
import java.util.List;

import bean.PaperInfo;
import dao.PaperInfoDAO;

public class TestMain {

	public static void main(String[] args) {

		List<PaperInfo> beans = new ArrayList<PaperInfo>();
		PaperInfoDAO pdao = new PaperInfoDAO();
		
		beans = pdao.list(3, 8);
		for (PaperInfo bean : beans) {
			System.out.println(bean.getId());
		}
	}

}
