package api;

import dao.BillDAO;
import dao.BlogDAO;
import dao.ImgDAO;
import dao.VideoDAO;
import dto.BlogDTO;
import dto.SetStatusCourseRequest;
import dto.VideoDTO;
import model.BillModel;
import model.BlogModel;
import model.ImgModel;
import org.codehaus.jackson.map.ObjectMapper;
import utils.HttpUtils;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.util.List;

@WebServlet(urlPatterns = {"/blog-get","/blog-post","/blog-put","/blog-del"})
@MultipartConfig
public class BlogAPI extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        BlogDAO blogDAO = new BlogDAO();
        List<BlogModel> blogModels = blogDAO.findAll();
        ObjectMapper objectMapper = new ObjectMapper();
        request.setCharacterEncoding("UTF-8");
        response.setContentType("application/json");
        objectMapper.writeValue(response.getOutputStream(),blogModels);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            BlogDAO blogDAO = new BlogDAO();
            BlogDTO blogDTO = new BlogDTO();
            blogDTO.setIdactor(Long.parseLong(req.getParameter("idactor")));
            blogDTO.setTitle(req.getParameter("title"));
            blogDTO.setContent(req.getParameter("content"));
            if(req.getParameter("linkimg")==null) {
                ImgModel image = new ImgDAO().saveToCloud(req.getPart("linkimg"));
                blogDTO.setLinkimg(image.getUrl());
            }
            blogDAO.insert(blogDTO);
            objectMapper.writeValue(resp.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"error");
        }
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        ObjectMapper objectMapper = new ObjectMapper();
        req.setCharacterEncoding("UTF-8");
        resp.setContentType("application/json");
        try{
            BlogDAO blogDAO = new BlogDAO();
            BlogDTO blogDTO = new BlogDTO();
            blogDTO.setIdactor(Long.parseLong(req.getParameter("idactor")));
            blogDTO.setIdblog(Long.parseLong(req.getParameter("idblog")));
            blogDTO.setTitle(req.getParameter("title"));
            blogDTO.setContent(req.getParameter("content"));
            if(req.getParameter("linkimg")==null) {
                ImgModel image = new ImgDAO().saveToCloud(req.getPart("linkimg"));
                blogDTO.setLinkimg(image.getUrl());
            }else{
                //undefined
                blogDTO.setLinkimg(blogDAO.findById(Long.parseLong(req.getParameter("idblog"))).getLinkimg());
            }
            blogDAO.update(blogDTO);
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
            SetStatusCourseRequest setStatusCourseRequest = HttpUtils.of(req.getReader()).tomodel(SetStatusCourseRequest.class);
            BlogDAO blogDAO = new BlogDAO();
            blogDAO.delete(setStatusCourseRequest.getIdcourse());
            objectMapper.writeValue(resp.getOutputStream(),"success");
        }catch (Exception ex){
            objectMapper.writeValue(resp.getOutputStream(),"error");
        }
    }
}
