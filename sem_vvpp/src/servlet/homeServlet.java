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

@WebServlet(name = "homeServlet", urlPatterns = { "/home" })
public class homeServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws IOException, ServletException {

        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();
        List<PaperInfo> pis = paperInfoDAO.list();

        request.setAttribute("pis", pis);
//        request.setAttribute("page", page);

        request.getRequestDispatcher("/home.jsp").forward(request, response);
//      response.sendRedirect(request.getContextPath() + "/home.jsp");

    }
}
