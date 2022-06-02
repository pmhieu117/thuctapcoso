package api;

import dao.ActorDAO;
import dao.CourseDAO;
import dao.ImgDAO;
import dao.VideoDAO;
import dto.SetStatusCourseRequest;
import dto.SetStatusUserRequest;
import dto.VideoDTO;
import model.ActorModel;
import model.CourseModel;
import model.ImgModel;
import model.VideoModel;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/course-get","/course-post","/course-put","/course-del"})
@MultipartConfig
public class CourseAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<CourseModel> courseModels= new CourseDAO().findAll();
        for(CourseModel i : courseModels){
            List<VideoModel> videoModelList= new VideoDAO().findByIdCourse(i.getIdcourse());
            for(VideoModel j :videoModelList){
                i.addVideoList(j);
            }
        }
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("applicaton/json");
        objectMapper.writeValue(response.getOutputStream(),courseModels);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try{
            CourseDAO courseDAO = new CourseDAO();
            CourseModel courseModel = new CourseModel();
            courseModel.setStatus(Long.parseLong(request.getParameter("status")));
            courseModel.setCost(Long.parseLong(request.getParameter("cost")));
            courseModel.setContent(request.getParameter("content"));
            courseModel.setExperience(request.getParameter("experience"));
            courseModel.setLinkintro(request.getParameter("linkintro"));
            courseModel.setName(request.getParameter("name"));
            courseModel.setTeacher(request.getParameter("teacher"));
            courseModel.setTitle(request.getParameter("title"));
            ImgModel image = new ImgDAO().saveToCloud(request.getPart("img"));
            courseModel.setLinkimg(image.getUrl());
            courseDAO.insert(courseModel);
            objectMapper.writeValue(response.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(response.getOutputStream(),"Dữ liệu không hợp lệ !");
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            CourseDAO courseDAO = new CourseDAO();
            CourseModel courseModel = new CourseModel();
            courseModel.setIdcourse(Long.parseLong(req.getParameter("idcourse")));
            courseModel.setStatus(Long.parseLong(req.getParameter("status")));
            courseModel.setCost(Long.parseLong(req.getParameter("cost")));
            courseModel.setContent(req.getParameter("content"));
            courseModel.setExperience(req.getParameter("experience"));
            courseModel.setLinkintro(req.getParameter("linkintro"));
            courseModel.setName(req.getParameter("name"));
            courseModel.setTeacher(req.getParameter("teacher"));
            courseModel.setTitle(req.getParameter("title"));
            if(req.getParameter("img")==null) {
                ImgModel image = new ImgDAO().saveToCloud(req.getPart("img"));
                courseModel.setLinkimg(image.getUrl());
            }else{
                //undefined
                courseModel.setLinkimg(courseDAO.findbyId(Long.parseLong(req.getParameter("idcourse"))).getLinkimg());
            }
            courseDAO.update(courseModel);
            objectMapper.writeValue(resp.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"Dữ liệu không hợp lệ !");
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            CourseDAO courseDAO = new CourseDAO();
            SetStatusCourseRequest request = HttpUtils.of(req.getReader()).tomodel(SetStatusCourseRequest.class);
            CourseModel courseModel = courseDAO.findbyId(request.getIdcourse());
            if(courseModel.getStatus()==1){
                courseModel.setStatus(0);
            }else{
                courseModel.setStatus(1);
            }
            courseDAO.update(courseModel);
            objectMapper.writeValue(resp.getOutputStream(), "success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"Dữ liệu không hợp lệ !");
        }
    }
}
