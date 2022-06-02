package api;

import dao.ActorDAO;
import dao.CourseDAO;
import dao.VideoDAO;
import dto.UsserDTO;
import model.ActorModel;
import model.CourseModel;
import model.VideoModel;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(urlPatterns = {"/load-all","/dang-ki"})
public class LoadAPI extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        CourseDAO courseDAO= new CourseDAO();
        List<CourseModel> names= courseDAO.findAll();
        for(CourseModel i :names){
            List<VideoModel> videoModelList= new VideoDAO().findByIdCourse(i.getIdcourse());
            for(VideoModel j :videoModelList){
                i.addVideoList(j);
            }
        }
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.writeValue(resp.getOutputStream(), names); //json jquery
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        // Lấy dữ liệu từ view ở dạng json
        ObjectMapper objectMapper = new ObjectMapper();
        UsserDTO usserDTO = HttpUtils.of(req.getReader()).tomodel(UsserDTO.class);

        System.out.println(usserDTO.getEmail()+" "+usserDTO.getFullname());
        //Chuyển sang dạng DTO

        //dto chuyern sang model

        //chuyển dữ liệu lên view
        Map<String, String> result = new LinkedHashMap<>();
        result.put("fullname", usserDTO.getFullname());
        result.put("email", usserDTO.getEmail());

        objectMapper.writeValue(resp.getOutputStream(), result); //json bên jquery
    }

//    public static void main(String[] args) {
//        List<ActorModel> ds= new ActorDAO().findAll();
//        for(ActorModel i:ds){
//            System.out.println(i);
//        }
//    }
}
