package api;

import dao.ActorDAO;
import dto.ActorDTO;
import dto.SetStatusUserRequest;
import dto.UsserDTO;
import model.ActorModel;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.*;

@WebServlet(urlPatterns = {"/admin-api","/admin-post","/admin-put","/admin-del"})
public class ActorAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        List<ActorModel> ds = new ActorDAO().findAll();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        ObjectMapper objectMapper = new ObjectMapper();
        objectMapper.writeValue(response.getOutputStream(), ds);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try{
            ActorDTO actorDTO = HttpUtils.of(request.getReader()).tomodel(ActorDTO.class);
            ActorModel actorModel = new ActorModel();
            actorModel.setStatus(1);
            actorModel.setEmail(actorDTO.getEmail());
            actorModel.setPassword(actorDTO.getPassword());
            actorModel.setName(actorDTO.getName());
            actorModel.setBirth(actorDTO.getBirth());
            actorModel.setPhone(actorDTO.getPhone());
            actorModel.setAddress(actorDTO.getAddress());
            actorModel.setRole(actorDTO.getRole());
            actorModel.setGender(actorDTO.getGender());
            ActorDAO actorDAO=new ActorDAO();
            if(actorDAO.findbyEmail(actorDTO.getEmail())!=null){
                objectMapper.writeValue(response.getOutputStream(),"Email đã tồn tại");
            }else {
                long id = actorDAO.insert(actorModel);
                objectMapper.writeValue(response.getOutputStream(), "success");
            }
        }catch (Exception ex){
            objectMapper.writeValue(response.getOutputStream(),"Hãy chắc chắn là bạn đã điền đầy đủ thông tin !");
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        ActorModel actorModel = HttpUtils.of(req.getReader()).tomodel(ActorModel.class);
        //Chuyển sang dạng DTO
        ActorDAO actorDAO = new ActorDAO();
        actorDAO.update(actorModel);
        //dto chuyern sang model

        //chuyển dữ liệu lên view
//        Map<String, String> result = new LinkedHashMap<>();
//        result.put("fullname", usserDTO.getFullname());
//        result.put("email", usserDTO.getEmail());
        objectMapper.writeValue(resp.getOutputStream(), actorModel);
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try {
            SetStatusUserRequest request = HttpUtils.of(req.getReader()).tomodel(SetStatusUserRequest.class);
            ActorDAO actorDAO = new ActorDAO();
            ActorModel actorModel =actorDAO.findbyId(request.getIdactor());
            if(actorModel.getStatus()==1){
                actorModel.setStatus(0);
            }else{
                actorModel.setStatus(1);
            }
            actorDAO.update(actorModel);
            objectMapper.writeValue(resp.getOutputStream(), "success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(), "error");
        }
    }
}
