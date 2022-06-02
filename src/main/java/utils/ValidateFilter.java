package utils;

import model.ActorModel;

import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.logging.LogRecord;

public class ValidateFilter implements Filter {
    private ServletContext context;

    @Override
    public void init(FilterConfig filterConfig) throws ServletException {
        this.context = filterConfig.getServletContext();
    }

    @Override
    public void doFilter(ServletRequest servletRequest, ServletResponse servletResponse, FilterChain filterChain) throws IOException, ServletException {
        HttpServletRequest request = (HttpServletRequest) servletRequest;
        HttpServletResponse response = (HttpServletResponse) servletResponse;
        String url = request.getRequestURI();
        System.out.println(url);
        if (url.startsWith("/thuctapcoso_war_exploded/views/admin")) {
            ActorModel model = (ActorModel) SessionUtils.getInstance().getValue(request, "USERMODEL");
            if (model != null) {
                if (model.getRole().equals("Admin")) {
                    filterChain.doFilter(servletRequest, servletResponse);
                } else{
                    response.sendRedirect(request.getContextPath()+"/trang-chu");
                }
            } else {
                response.sendRedirect(request.getContextPath()+"/trang-chu");
            }
        } else {
            filterChain.doFilter(servletRequest, servletResponse); //Nếu không thì cho điều hướng tự do
        }
    }

    @Override
    public void destroy() {
        Filter.super.destroy();
    }
}
