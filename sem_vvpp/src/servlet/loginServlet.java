package servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

import bean.User;
import com.alibaba.fastjson.JSONObject;
import dao.UserDAO;

@WebServlet(name = "loginServlet", urlPatterns = {"/admin-login"})
public class loginServlet extends HttpServlet{

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String username = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO udao = new UserDAO();
        User user = udao.get(username, password);

        response.setContentType("application/json");
        response.setCharacterEncoding("UTF-8");

        PrintWriter writer = response.getWriter();
        if (null == user) {
//            request.setAttribute("msg", "账号或密码错误");
//            request.getRequestDispatcher("/index").forward(request, response);
//            return;
            response.setStatus(500);
            writer.write("账号或密码错误");
            writer.flush();
            return;
        }
//        PrintWriter out = response.getWriter();
        request.getSession().setAttribute("username", username);
//        response.sendRedirect(request.getContextPath() + "/admin/paper_info");
        writer.write(JSONObject.toJSONString(user));
        writer.flush();
    }
}
