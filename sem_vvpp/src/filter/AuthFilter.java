package filter;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class AuthFilter implements Filter {

    @Override
    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
        throws IOException, ServletException {

        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)res;

        request.setCharacterEncoding("UTF-8");
        response.setContentType("text/html;charset=UTF-8");

        String uri =request.getRequestURI();

        if (uri.endsWith("login.jsp") || uri.endsWith("/login")) {
            chain.doFilter(request, response);
            return;
        }

        if (uri.contains("/css/") || uri.contains("/js/") || uri.contains("/imgs/")) {
            chain.doFilter(request, response);
            return;
        }

        String username = (String)request.getSession().getAttribute("username");
        if (null == username) {
            java.io.PrintWriter out = response.getWriter();
            out.print("<script language='javascript'>alert('请先登录！');window.location.href='../index';</script>");
            return;
        }

        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {

    }
}
