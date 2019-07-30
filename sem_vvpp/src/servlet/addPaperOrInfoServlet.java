package servlet;

import bean.PaperInfo;
import dao.PaperInfoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;

@WebServlet(name = "addPaperOrInfoServlet", urlPatterns = { "/admin/addPaperOrInfo" })
@MultipartConfig
public class addPaperOrInfoServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public addPaperOrInfoServlet() {
        super();
    }
    //上传文件存储路径
    private static final String UPLOAD_DIRECTORY = "paper_and_info_upload";

    /*
    *上传数据及保存文件
    */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        PaperInfo paperInfo = new PaperInfo();
        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();

        String uploadPath = request.getServletContext().getRealPath("/");

        File uploadFilePath = new File(uploadPath + "/pdfjs/web/" + UPLOAD_DIRECTORY);
        if (!uploadFilePath.exists()) {
            uploadFilePath.mkdirs();
        }

        /*
        *获取标题、作者、类型和文件信息
        */
        String paperOrInfoTitle = request.getParameter("paperOrInfoTitle");
        String paperOrInfoAuthor = request.getParameter("paperOrInfoAuthor");
        String paperOrInfoType = request.getParameter("paperOrInfoType");
        Part paperOrInfoFile = request.getPart("paperOrInfoFile");
        String fileHeader = paperOrInfoFile.getHeader("content-disposition");

        String fileName = paperOrInfoTitle;

        fileName = fileName + fileHeader.substring(fileHeader.lastIndexOf("."), fileHeader.length() - 1);

        paperOrInfoFile.write(uploadFilePath.getAbsolutePath() + File.separator + fileName);

        paperInfo.setTitle(paperOrInfoTitle);
        paperInfo.setAuthor(paperOrInfoAuthor);
        paperInfo.setType(paperOrInfoType);
        paperInfo.setPath(uploadFilePath.getAbsolutePath() + File.separator + fileName);

        paperInfoDAO.add(paperInfo);

        response.setContentType("text/html;charset=utf-8");

        java.io.PrintWriter out2 = response.getWriter();

        out2.print("<script language='javascript'>alert('上传成功！');window.location.href='/admin';</script>");
    }
}
