package servlet;

import bean.PaperInfo;
import dao.PaperInfoDAO;
import util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;

@WebServlet(name = "deletePaperInfoServlet", urlPatterns = {"/admin/delete_paper_info"})
public class deletePaperInfoServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        {

            int id = Integer.parseInt(request.getParameter("paper-info-delete-id"));
            PaperInfo paperInfo = PaperInfoDAO.get(id);
            PaperInfoDAO paperInfoDAO = new PaperInfoDAO();
            paperInfoDAO.delete(id);

            try {
                File file = new File(paperInfo.getPath());
                response.sendRedirect(request.getContextPath() + "/admin/paper_info");
            } catch (Exception e) {
                e.printStackTrace();
            }
    }
}
