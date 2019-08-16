package servlet;

import bean.PaperInfo;
import dao.PaperInfoDAO;
import util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "adminServlet", urlPatterns = {"/admin/paper_info"})
public class adminServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        int start= 0;
        int count = 15;
        try {
            start = Integer.parseInt(request.getParameter("page.start"));
        } catch (Exception e) {

        }
        try {
            count = Integer.parseInt(request.getParameter("page.count"));
        } catch (Exception e) {

        }
        Page page = new Page(start, count);

        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();
        List<PaperInfo> pis = paperInfoDAO.list(page.getStart(), page.getCount());

        int total = paperInfoDAO.getTotal();
        page.setTotal(total);

        request.setAttribute("pis", pis);
        request.setAttribute("page", page);

        request.getRequestDispatcher("/admin/paper_info.jsp").forward(request,response);

    }
}
