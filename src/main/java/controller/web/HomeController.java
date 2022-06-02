package controller.web;

import dao.ActorDAO;
import dao.CartDAO;
import dao.CourseDAO;
import dao.VideoDAO;
import dto.RenderBuyModal;
import dto.TransDTO;
import dto.UsserDTO;
import model.ActorModel;
import model.CartModel;
import model.CourseModel;
import model.VideoModel;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;
import utils.SessionUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/home-page", "/trang-chu","/home-put"})
public class HomeController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String action = request.getParameter("action");
        try{
            long idactor = 0;
            long id = Long.parseLong(action);
            ActorModel model = (ActorModel) SessionUtils.getInstance().getValue(request,"USERMODEL");
            if(model!=null){
                CartDAO cartDAO = new CartDAO();
                CartModel cartModel = cartDAO.check(model.getIdactor(),id);
                if(cartModel!=null){
                    if(cartModel.getBought()==1){
                        request.setAttribute("check","yes");
                    }else if(cartModel.getBought()==0){
                        request.setAttribute("check","no");
                    }
                }
                idactor = model.getIdactor();
            }
            request.setAttribute("idactor",idactor);//đoạn này để luôn có nghiệm
            CourseModel courseModel = new CourseDAO().findbyId(id);
            request.setAttribute("course",courseModel);
            request.setAttribute("id",id);
            request.getRequestDispatcher("views/web/course.jsp").forward(request,response);
        }catch (Exception ex){
            if (action != null && action.equals("logout")) {
                SessionUtils.getInstance().removeValue(request, "USERMODEL");
                response.sendRedirect(request.getContextPath()+"/trang-chu");
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("/views/web/home.jsp");
                rd.forward(request, response);
            }
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String user = request.getParameter("username");
        String pass= request.getParameter("pass");
        ActorModel model = new ActorDAO().check(user,pass);
        if(model != null){
            SessionUtils.getInstance().putValue(request, "USERMODEL", model);
            if(model.getRole().equals("Admin")){
                request.getRequestDispatcher("views/admin/admin-tkadmin.jsp").forward(request,response);
            }else{
                request.getRequestDispatcher("views/web/home.jsp").forward(request,response);
            }
        }else{
            String error = "SAI !";
            request.setAttribute("error",error);
            request.getRequestDispatcher("views/web/home.jsp").forward(request,response);
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            TransDTO transDTO = HttpUtils.of(req.getReader()).tomodel(TransDTO.class);
            req.setAttribute("transdto",transDTO);
            SessionUtils.getInstance().putValue(req, "TRANS", transDTO);
            objectMapper.writeValue(resp.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"Hệ thóng đang gặp sự cố !");
        }
    }
}
