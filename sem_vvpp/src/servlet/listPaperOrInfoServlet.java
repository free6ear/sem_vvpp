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

@WebServlet(name = "listPaperOrInfoServlet", urlPatterns = { "/admin/listPaperOrInfo" })
public class listPaperOrInfoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();
        List<PaperInfo> pis = paperInfoDAO.list();

        request.setAttribute("pis", pis);
//        request.setAttribute("page", page);

        response.sendRedirect(request.getContextPath() + "/admin.jsp");
    }
}
