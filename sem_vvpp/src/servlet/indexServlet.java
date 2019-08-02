package servlet;

import bean.PaperInfo;
import dao.PaperInfoDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class indexServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        int count = 6;

        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();
        List<PaperInfo> pis = paperInfoDAO.listLatest(count);

        request.setAttribute("pis", pis);

        request.getRequestDispatcher("/login.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int count = 6;

        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();
        List<PaperInfo> pis = paperInfoDAO.listLatest(count);

        request.setAttribute("pis", pis);

        request.getRequestDispatcher("/login.jsp").forward(request, response);

    }
}
