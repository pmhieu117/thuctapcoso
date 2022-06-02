package api;

import dao.*;
import dto.BillDTO;
import dto.ConfirmTransDTO;
import dto.TransDTO;
import model.BillDetailModel;
import model.BillModel;
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
import java.util.List;

@WebServlet(urlPatterns = {"/trans-get","/trans-post"})
public class TransAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        TransDTO transDTO = (TransDTO) SessionUtils.getInstance().getValue(request,"TRANS");
//        System.out.println(transDTO);
        List<CourseModel> courseModels = new ArrayList<>();
        CourseDAO courseDAO = new CourseDAO();
        VideoDAO videoDAO = new VideoDAO();
        for(Integer i : transDTO.getArrId()){
            CourseModel courseModel = courseDAO.findbyId(i);
            ArrayList<VideoModel> videoModels = videoDAO.findByIdCourse(i);
            for(VideoModel j : videoModels){
                courseModel.addVideoList(j);
            }
            courseModels.add(courseModel);
        }
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.writeValue(response.getOutputStream(), courseModels);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try{
            ConfirmTransDTO confirmTransDTO = HttpUtils.of(request.getReader()).tomodel(ConfirmTransDTO.class);
            CartDAO cartDAO = new CartDAO();
            System.out.println(confirmTransDTO);
            for (Long i : confirmTransDTO.getArrIdCourse()){
                cartDAO.update(confirmTransDTO.getIdactor(),i);
            }
            BillDAO billDAO = new BillDAO();
            billDAO.updateStatus(confirmTransDTO.getIdbill());
            objectMapper.writeValue(response.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(response.getOutputStream(),"Hệ thóng đang gặp sự cố !");
        }
    }
}
