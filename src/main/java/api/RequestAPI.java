package api;

import dao.ActorDAO;
import dto.ActorDTO;
import dto.SetStatusUserRequest;
import model.ActorModel;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;

@WebServlet(urlPatterns = {"/req-get","/req-post","/req-put"})
public class RequestAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper =new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        SetStatusUserRequest setStatusUserRequest = HttpUtils.of(request.getReader()).tomodel(SetStatusUserRequest.class);
        ActorModel actorModel = new ActorDAO().findbyId(setStatusUserRequest.getIdactor());
        objectMapper.writeValue(response.getOutputStream(),actorModel);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper =new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        SetStatusUserRequest setStatusUserRequest = HttpUtils.of(request.getReader()).tomodel(SetStatusUserRequest.class);
        ActorModel actorModel = new ActorDAO().findbyId(setStatusUserRequest.getIdactor());
        objectMapper.writeValue(response.getOutputStream(),actorModel);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper =new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            ActorDTO actorDTO = HttpUtils.of(req.getReader()).tomodel(ActorDTO.class);
            ActorDAO actorDAO = new ActorDAO();
            ActorModel actorModel = actorDAO.findbyId(actorDTO.getIdactor());
            System.out.println(actorModel);
            actorModel.setEmail(actorDTO.getEmail());
            actorModel.setPassword(actorDTO.getPassword());
            actorModel.setName(actorDTO.getName());
            actorModel.setBirth(actorDTO.getBirth());
            actorModel.setPhone(actorDTO.getPhone());
            actorModel.setAddress(actorDTO.getAddress());
            actorModel.setRole(actorDTO.getRole());
            actorModel.setGender(actorDTO.getGender());
            System.out.println(actorModel);
            actorDAO.update(actorModel);
            objectMapper.writeValue(resp.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"error");
        }
    }
}
