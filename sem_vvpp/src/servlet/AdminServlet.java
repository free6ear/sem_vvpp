package servlet;

import bean.PaperInfo;
import dao.PaperInfoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "adminServlet", urlPatterns = {"/admin"})
public class AdminServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();
        List<PaperInfo> pis = paperInfoDAO.list(1, 15);

        req.setAttribute("pis", pis);

        req.getRequestDispatcher("/admin.jsp").forward(req, resp);

    }
}
