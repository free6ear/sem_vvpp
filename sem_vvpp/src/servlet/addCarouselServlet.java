package servlet;

import bean.Carousel;
import dao.CarouselDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;
import java.io.*;

@WebServlet(name = "addCarouselServlet", urlPatterns = { "/admin/add_carousel"})
@MultipartConfig
public class addCarouselServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;

    public addCarouselServlet() {
        super();
    }
    //上传文件存储路径
    private static final String UPLOAD_DIRECTORY = "carousel_upload";

    /*
     *上传数据及保存文件
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        Carousel carousel = new Carousel();
        CarouselDAO carouselDAO = new CarouselDAO();

        String uploadPath = request.getServletContext().getRealPath("/");

        File uploadFilePath = new File(uploadPath + "/pdfjs/web/" + UPLOAD_DIRECTORY);
        if (!uploadFilePath.exists()) {
            uploadFilePath.mkdirs();
        }

        String carouselTitle = request.getParameter("carouselTitle");

        Part paperOrInfoFile = request.getPart("carouselFile");
        String fileHeader = paperOrInfoFile.getHeader("content-disposition");

        String picName = carouselTitle;

        picName = picName + fileHeader.substring(fileHeader.lastIndexOf("."), fileHeader.length() - 1);

        paperOrInfoFile.write(uploadFilePath.getAbsolutePath() + File.separator + picName);

        carousel.setTitle(carouselTitle);
        carousel.setPath(picName);

        carouselDAO.add(carousel);

        response.setContentType("text/html;charset=utf-8");

        java.io.PrintWriter out2 = response.getWriter();

        out2.print("<script language='javascript'>alert('上传成功！');window.location.href='/admin/carousel';</script>");
    }
}