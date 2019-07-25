package servlet;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

import bean.User;
import dao.UserDAO;

public class LoginServlet extends HttpServlet{

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
        throws ServletException, IOException {

        String name = request.getParameter("username");
        String password = request.getParameter("password");

        UserDAO udao = new UserDAO();
        User user = udao.get(name, password);

        if (null==user) {
            System.out.println("登录失败");
            response.sendError(HttpServletResponse.SC_SERVICE_UNAVAILABLE,"用户名或密码错误");
            response.sendRedirect("login.jsp");
            return;
        }
        request.getSession().setAttribute("username", name);
        response.sendRedirect("backstage.jsp");
        System.out.println("登录成功");
        return;
    }
}
