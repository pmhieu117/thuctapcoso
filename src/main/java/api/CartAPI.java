package api;

import dao.CartDAO;
import dao.CourseDAO;
import dto.CartDTO;
import dto.RenderBuyModal;
import model.CartModel;
import model.CourseModel;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.ArrayList;

@WebServlet(urlPatterns = {"/cart-get","/cart-post","/cart-put"})
public class CartAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        try{
            CartDAO cartDAO = new CartDAO();
            CartDTO cartDTO = HttpUtils.of(request.getReader()).tomodel(CartDTO.class);
            cartDAO.insert(cartDTO);
            objectMapper.writeValue(response.getOutputStream(),"Đã thêm vào giỏ hàng của bạn !");
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
            CartDAO cartDAO = new CartDAO();
            RenderBuyModal renderBuyModal = HttpUtils.of(req.getReader()).tomodel(RenderBuyModal.class);
            System.out.println(renderBuyModal);
            ArrayList<CartModel> cartModels =cartDAO.findByIdActor(renderBuyModal.getIdactor());
            objectMapper.writeValue(resp.getOutputStream(),cartModels);
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"Hệ thóng đang gặp sự cố !");
        }
    }
}
