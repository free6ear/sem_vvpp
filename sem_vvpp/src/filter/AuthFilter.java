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

        String uri =request.getRequestURI();

        if (uri.endsWith("login.jsp") || uri.endsWith("/login")) {
            chain.doFilter(request, response);
            return;
        }

        if (uri.contains("/css/") || uri.contains("/js/") || uri.contains("/imgs/")) {
            chain.doFilter(request, response);
            return;
        }
//        if (uri.endsWith("login.jsp") || uri.endsWith("login")) {
//            chain.doFilter(request, response);
//            return;
//        }

        String username = (String)request.getSession().getAttribute("username");
        if (null == username) {
            response.sendRedirect("login.jsp");
            return;
        }

        chain.doFilter(request, response);
    }

    @Override
    public void init(FilterConfig arg0) throws ServletException {

    }
}
