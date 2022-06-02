package controller.web;

import dao.CourseDAO;
import model.CourseModel;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet("/course-item")
public class CourseServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String id = request.getParameter("id");
        if(id !=null){
            CourseModel courseModel = new CourseDAO().findbyId(Long.parseLong(id));
            request.setAttribute("course",courseModel);
            request.setAttribute("id",Long.parseLong(id));
            request.getRequestDispatcher("views/web/course.jsp").forward(request,response);
            System.out.println("ok");
        }else{
            request.getRequestDispatcher("views/web/home.jsp").forward(request,response);
            System.out.println("action!=id");
        }
    }


    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
