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

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    {

        int id = Integer.parseInt(request.getParameter("carousel-delete-id"));
        Carousel carousel = CarouselDAO.get(id);
        CarouselDAO carouselDAO = new CarouselDAO();
        carouselDAO.delete(id);

        try {
            File file = new File(carousel.getPath());
            response.sendRedirect(request.getContextPath() + "/admin/carousel");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
