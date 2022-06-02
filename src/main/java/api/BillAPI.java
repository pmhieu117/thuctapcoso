package api;

import dao.*;
import dto.*;
import model.*;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;
import utils.SessionUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(urlPatterns = {"/bill-get", "/bill-post","/bill-put","/bill-del"})
public class BillAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BillDAO billDAO = new BillDAO();
        List <BillModel> billModels = billDAO.findAll();
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        objectMapper.writeValue(response.getOutputStream(),billModels);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try{
            BillDAO billDAO = new BillDAO();
            BillDTO billDTO = HttpUtils.of(request.getReader()).tomodel(BillDTO.class);
            BillModel billModel = new BillModel(billDTO.getIdbill(),billDTO.getIdactor(),
                    billDTO.getStatus(),billDTO.getName(),billDTO.getAddress(),
                    billDTO.getPhone(),billDTO.getEmail(),billDTO.getNote(),billDTO.getCost());
            long id =billDAO.insert(billModel);
            VideoDAO videoDAO = new VideoDAO();
            BillDetailDAO billDetailDAO =new BillDetailDAO();
            for(Integer i : billDTO.getArrId()){
                BillDetailModel billDetailModel = new BillDetailModel(id,i,videoDAO.findByIdCourse(i).size());
                System.out.println(billDetailModel);
                billDetailDAO.insert(billDetailModel);
                billModel.addBillDetail(billDetailModel);
            }
            objectMapper.writeValue(response.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(response.getOutputStream(),"Hệ thóng đang gặp sự cố !");
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            CheckTransDTO checkTransDTO = new CheckTransDTO();
            SetStatusCourseRequest setStatusCourseRequest = HttpUtils.of(req.getReader()).tomodel(SetStatusCourseRequest.class);
            BillDAO billDAO = new BillDAO();
            BillModel billModel = billDAO.findById(setStatusCourseRequest.getIdcourse());
            ActorModel actorModel = new ActorDAO().findbyId(billModel.getIdactor());
            checkTransDTO.setIdactor(actorModel.getIdactor());
            checkTransDTO.setEmail(actorModel.getEmail());
            checkTransDTO.setName(actorModel.getName());
            checkTransDTO.setAddress(actorModel.getAddress());
            checkTransDTO.setBirth(actorModel.getBirth());
            checkTransDTO.setGender(actorModel.getGender());
            checkTransDTO.setPhone(actorModel.getPhone());
            ArrayList<BillDetailModel> billDetailModels = (ArrayList<BillDetailModel>) new BillDetailDAO().findByIdBill(billModel.getIdbill());
            CourseDAO courseDAO = new CourseDAO();
            System.out.println(billDetailModels);
            for(BillDetailModel i : billDetailModels){
                checkTransDTO.addCourse(courseDAO.findbyId(i.getIdcourse()));
            }
            System.out.println(checkTransDTO);
            objectMapper.writeValue(resp.getOutputStream(),checkTransDTO);
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"Hệ thóng đang gặp sự cố !");
        }
    }

    @Override
    protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            SetStatusCourseRequest setStatusCourseRequest = HttpUtils.of(req.getReader()).tomodel(SetStatusCourseRequest.class);
            BillDAO billDAO = new BillDAO();
            billDAO.deleteById(setStatusCourseRequest.getIdcourse());
            objectMapper.writeValue(resp.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"Hệ thóng đang gặp sự cố !");
        }
    }
}
