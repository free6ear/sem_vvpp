package filter;

;

import com.mysql.jdbc.StringUtils;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public class BackServletFilter implements Filter {

    public void destroy() {

    }

    @Override
    public void doFilter(ServletRequest req, ServletResponse res, FilterChain chain)
        throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest)req;
        HttpServletResponse response = (HttpServletResponse)res;

        String contextPath = request.getServletContext().getContextPath();
        String uri = request.getRequestURI();
        uri = org.apache.commons.lang.StringUtils.remove(uri, contextPath);

        if (uri.startsWith("admin")) {
            String servletPath = org.apache.commons.lang.StringUtils.substringBetween(uri,"_", "_") + "Servlet";
            String method = org.apache.commons.lang.StringUtils.substringAfterLast(uri,"_" );
            request.setAttribute("method", method);
            req.getRequestDispatcher("/" + servletPath).forward(request, response);
            return;
        }
    }

    public void init(FilterConfig arg0) throws ServletException {

    }
}