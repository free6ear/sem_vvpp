package servlet;

import bean.Carousel;
import bean.PaperInfo;
import dao.CarouselDAO;
import dao.PaperInfoDAO;
import util.Page;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "listCarouselServlet", urlPatterns = {"/admin/carousel"})
public class listCarouselServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        CarouselDAO carouselDAO = new CarouselDAO();
        List<Carousel> cs = carouselDAO.list();

        request.setAttribute("cs", cs);

        request.getRequestDispatcher("/carousel.jsp").forward(request, response);

    }
}