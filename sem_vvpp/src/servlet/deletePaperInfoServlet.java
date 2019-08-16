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

    private static final String UPLOAD_DIRECTORY = "paper_and_info_upload";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
        {
            String uploadPath = request.getServletContext().getRealPath("/");

            File uploadFilePath = new File(uploadPath + "/pdfjs/web/" + UPLOAD_DIRECTORY);

            int id = Integer.parseInt(request.getParameter("paper-info-delete-id"));
            PaperInfo paperInfo = PaperInfoDAO.get(id);
            PaperInfoDAO paperInfoDAO = new PaperInfoDAO();

            paperInfoDAO.delete(id);

            try {
                response.sendRedirect(request.getContextPath() + "/admin/paper_info");
            } catch (IOException e) {
                e.printStackTrace();
            }
    }
}
