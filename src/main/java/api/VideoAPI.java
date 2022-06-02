package api;

import dao.VideoDAO;
import dto.VideoDTO;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/video-get","/video-post","/video-put","/video-del"})
public class VideoAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try{
            VideoDAO videoDAO = new VideoDAO();
            VideoDTO videoDTO = HttpUtils.of(request.getReader()).tomodel(VideoDTO.class);
            videoDAO.insert(videoDTO);
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
            VideoDTO videoDTO = HttpUtils.of(req.getReader()).tomodel(VideoDTO.class);
            VideoDAO videoDAO = new VideoDAO();
            videoDAO.update(videoDTO);
            objectMapper.writeValue(resp.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"error");
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            VideoDTO videoDTO = HttpUtils.of(req.getReader()).tomodel(VideoDTO.class);
            VideoDAO videoDAO = new VideoDAO();
            videoDAO.delete(videoDTO.getIdVideo());
            objectMapper.writeValue(resp.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"error");
        }
    }
}
