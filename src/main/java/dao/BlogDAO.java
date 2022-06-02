package dao;
import dto.BlogDTO;
import model.BlogModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class BlogDAO {
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;

    public List<BlogModel> findAll(){
        List<BlogModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM blog");
            rs=pst.executeQuery();
            while (rs.next()){
                BlogModel blogModel = new BlogModel(rs.getLong("idblog"),rs.getString("title"),
                        rs.getString("content"),rs.getString("linkimg"),rs.getLong("idactor"));
                ds.add(blogModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public BlogModel findById(long idblog){
        BlogModel blogModel =null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM blog WHERE idblog = ?");
            pst.setLong(1,idblog);
            rs=pst.executeQuery();
            while (rs.next()) {
                blogModel = new BlogModel(rs.getLong("idblog"), rs.getString("title"),
                        rs.getString("content"), rs.getString("linkimg"), rs.getLong("idactor"));
            }
            return blogModel;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public Long insert(BlogDTO blogDTO){
        try {
            Long id = null;
            conn=DBConnect.open();
            pst = conn.prepareStatement("INSERT INTO blog(idactor,title,content,linkimg) VALUES (?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            pst.setLong(1,blogDTO.getIdactor());
            pst.setString(2,blogDTO.getTitle());
            pst.setString(3,blogDTO.getContent());
            pst.setString(4,blogDTO.getLinkimg());
            pst.executeUpdate();
            rs = pst.getGeneratedKeys();
            if (rs.next()) {
                id = rs.getLong(1);
            }
            return id;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }
    public void update(BlogDTO blogDTO){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("UPDATE blog SET title = ?,content=?,linkimg=? WHERE idblog = ?");
            pst.setString(1,blogDTO.getTitle());
            pst.setString(2,blogDTO.getContent());
            pst.setString(3,blogDTO.getLinkimg());
            pst.setLong(4,blogDTO.getIdblog());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public void delete(long idblog){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("DELETE FROM ttcscongoc.blog where idblog=?");
            pst.setLong(1,idblog);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
}
