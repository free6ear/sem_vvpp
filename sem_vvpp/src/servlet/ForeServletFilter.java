package servlet;

import bean.User;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//public class ForeServletFilter implements Filter {
//
//    @Override
//    public void destroy() {
//
//    }
//
//    @Override
//    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
//        throws IOException, ServletException {
//
//        HttpServletRequest request = (HttpServletRequest)req;
//        HttpServletResponse response = (HttpServletResponse)res;
//        String contextPath = request.getServletContext().getContextPath();
//        request.getServletContext().setAttribute("contextPath", contextPath);
//
//        User user = (User) request.getSession().getAttribute("user");
//        int carTotalNumber = 0;
//        if (null!=user)
//    }
//}
