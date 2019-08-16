package servlet;

import bean.Carousel;
import dao.CarouselDAO;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;


@WebServlet(name = "deleteCarouselServlet", urlPatterns = {"/admin/delete_carousel"})
public class deleteCarouselServlet extends HttpServlet {

    private static final String UPLOAD_DIRECTORY = "carousel_upload";

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    {

        String uploadPath = request.getServletContext().getRealPath("/");

        File uploadFilePath = new File(uploadPath + "/pdfjs/web/" + UPLOAD_DIRECTORY);

        int id = Integer.parseInt(request.getParameter("carousel-delete-id"));
        Carousel carousel = CarouselDAO.get(id);
        CarouselDAO carouselDAO = new CarouselDAO();
        carouselDAO.delete(id);

        try {
            response.sendRedirect(request.getContextPath() + "/admin/carousel");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
