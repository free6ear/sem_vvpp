package servlet;

import bean.Carousel;
import dao.CarouselDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name="updateCarouselServlet", urlPatterns={"/admin/update_carousel"})
public class updateCarouselServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("carousel-id"));
        String title = request.getParameter("carousel-title");
        Carousel carousel = new Carousel();
        CarouselDAO carouselDAO = new CarouselDAO();

        carousel.setId(id);
        carousel.setTitle(title);

        carouselDAO.update(carousel);

        response.sendRedirect(request.getContextPath() + "/admin/carousel");

    }
}