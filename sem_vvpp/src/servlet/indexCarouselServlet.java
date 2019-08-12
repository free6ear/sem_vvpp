//package servlet;
//
//import bean.Carousel;
//import com.alibaba.fastjson.JSONArray;
//import com.alibaba.fastjson.JSONObject;
//import dao.CarouselDAO;
//
//import javax.servlet.annotation.WebServlet;
//import javax.servlet.http.HttpServlet;
//import javax.servlet.http.HttpServletRequest;
//import javax.servlet.http.HttpServletResponse;
//import java.io.IOException;
//import java.io.PrintWriter;
//import java.util.List;
//
//@WebServlet(name = "indexCarouselServlet", urlPatterns = {"/get/carousel"})
//public class indexCarouselServlet extends HttpServlet {
//
//    protected void doGet(HttpServletRequest request, HttpServletResponse response)
//        throws IOException {
//
//        response.setContentType("application/json");
//        response.setCharacterEncoding("UTF-8");
//
//        CarouselDAO carouselDAO = new CarouselDAO();
//        List<Carousel> cs = carouselDAO.list();
//        request.setAttribute("cs", cs);
//    }
//}
