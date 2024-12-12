package filter;


import jakarta.servlet.Filter;
import jakarta.servlet.FilterChain;
import jakarta.servlet.FilterConfig;
import jakarta.servlet.ServletException;
import jakarta.servlet.ServletRequest;
import jakarta.servlet.ServletResponse;
import jakarta.servlet.annotation.WebFilter;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import java.io.IOException;

@WebFilter(value = {
       "/chi-tiet-san-pham/*"
})
public class AuthFilter implements Filter {
    public void init(FilterConfig filterConfig) throws ServletException {
    Filter.super.init(filterConfig);
        System.out.println("AuthFilter init");
    }
    public void destroy() {
        Filter.super.destroy();
        System.out.println("AuthFilter destroy");
    }
    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("username");
            if (username == null) {
                res.sendRedirect(req.getContextPath() + "/login");
            }else {
                chain.doFilter(request, response);
            }
    }
}
