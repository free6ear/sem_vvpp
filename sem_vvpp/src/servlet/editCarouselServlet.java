package servlet;

import bean.Carousel;
import bean.PaperInfo;
import com.alibaba.fastjson.JSONObject;
import dao.CarouselDAO;
import dao.PaperInfoDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet(name="editCarouselServlet", urlPatterns={"/admin/edit_carousel"})
public class editCarouselServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        int id = Integer.parseInt(request.getParameter("id"));
        Carousel carousel = CarouselDAO.get(id);
        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");
        PrintWriter writer = response.getWriter();
        writer.write(JSONObject.toJSONString(carousel));
        writer.flush();
    }
}