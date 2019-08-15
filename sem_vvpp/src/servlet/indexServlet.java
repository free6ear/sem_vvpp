package servlet;

import bean.Carousel;
import bean.PaperInfo;
import dao.CarouselDAO;
import dao.PaperInfoDAO;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

public class indexServlet extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        int count = 6;

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();
        List<PaperInfo> pis = paperInfoDAO.listLatest(count);

        CarouselDAO carouselDAO = new CarouselDAO();
        List<Carousel> cs = carouselDAO.list();

        request.setAttribute("cs", cs);
        request.setAttribute("pis", pis);

        request.getRequestDispatcher("/login.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int count = 6;

        PaperInfoDAO paperInfoDAO = new PaperInfoDAO();

        List<PaperInfo> pis = paperInfoDAO.listLatest(count);

        CarouselDAO carouselDAO = new CarouselDAO();
        List<Carousel> cs = carouselDAO.list();

        request.setAttribute("cs", cs);
        request.setAttribute("pis", pis);

        request.getRequestDispatcher("/login.jsp").forward(request, response);

    }
}
