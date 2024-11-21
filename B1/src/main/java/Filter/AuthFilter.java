package Filter;

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
@WebFilter(filterName = "AuthFilter", value = {
        // LIET KE CAC DUONG DAN BAT BUOC PHAI DANG NHAP THI MOI DUNG DUOC
        "/category/*",
        "/product/*",
        "/DemoServlet"
})
public class AuthFilter implements Filter {
    /**
     * Filter: Bo loc => LOC TAT CAC CAC REQUEST XEM CO DUOC TRUY CAP HAY KHONG
     * KHI CHAY PROJECT VAO CLASS IMPLEMENT TU FILTER DAU TIEN.
     * AUTHENTICATION & Authorization
     * + AUTHEN: CHECK TAI KHOAN TON TAI HAY KHONG TRONG CSDL => 401
     * + AUTHOR: CHECK XEM TAI KHOAN DUOC TRUY CAP DUNG QUYEN HAY KHONG => 403
     */
    public void init(FilterConfig config) throws ServletException {
        // KHOI TAO NGAY TU LUC BAN DAU ( 1 LAN DUY NHAT )
        Filter.super.init(config);
        System.out.println("CHAY 1 LAN DUY NHAT - INIT ");
    }

    public void destroy() {
        // PHA HUY => GIAI PHONG TAI NGUYEN => CHAY CUOI CUNG (1 LAN DUY NHAT)
        Filter.super.destroy();
        System.out.println("CHAY 1 LAN DUY NHAT - DESTROY");
    }

    @Override
    public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws ServletException, IOException {
//        chain.doFilter(request, response);
        // B1: EP KIEU VE HttpServletResponse, HTTPSERVLETREQUEST
        HttpServletRequest req = (HttpServletRequest) request;
        HttpServletResponse res = (HttpServletResponse) response;
        // B2: Goi Session
        HttpSession session = req.getSession();
        String username = (String) session.getAttribute("uname");
        // B3: Check
        if (username == null) {
            // chua dang nhap
            res.sendRedirect("/login");
        } else {
            // da dang nhap thanh cong
            chain.doFilter(request, response);
        }
    }
}
