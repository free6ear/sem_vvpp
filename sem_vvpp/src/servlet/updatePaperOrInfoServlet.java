package servlet;

import bean.PaperInfo;
import dao.PaperInfoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="updatePaperOrInfoServlet", urlPatterns={"/admin/updatePaperOrInfo"})
public class updatePaperOrInfoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("paper-info-id"));
        String title = request.getParameter("paper-info-title");
        String author = request.getParameter("paper-info-author");
        String type = request.getParameter("paper-info-type");
        PaperInfo paperInfo = new PaperInfo();

        paperInfo.setId(id);
        paperInfo.setTitle(title);
        paperInfo.setAuthor(author);
        paperInfo.setType(type);

        PaperInfoDAO.update(paperInfo);

        response.sendRedirect(request.getContextPath() + "/admin");

    }
}
