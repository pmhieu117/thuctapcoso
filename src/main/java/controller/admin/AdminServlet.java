package controller.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/admin-home")
public class AdminServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        long idcourse = Long.parseLong(request.getParameter("idcourse"));
        if(idcourse==0){
            request.setAttribute("idcourse",idcourse);
            request.getRequestDispatcher("views/admin/admin-course-edit.jsp").forward(request,response);
        }else{
            request.setAttribute("idcourse",idcourse);
            request.getRequestDispatcher("views/admin/admin-course-edit.jsp").forward(request,response);
        }
    }

}
