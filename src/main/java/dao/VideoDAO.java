package dao;

import dto.VideoDTO;
import model.ActorModel;
import model.VideoModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class VideoDAO {
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;

    public List<VideoModel> findAll(){
        List<VideoModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM videos");
            rs=pst.executeQuery();
            while (rs.next()){
                VideoModel videoModel =  new VideoModel(rs.getLong("idvideo"),rs.getLong("idcourse"),
                        rs.getString("title"),rs.getString("link"));
                ds.add(videoModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public VideoModel findbyId(long id){
        VideoModel videoModel = null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROMvideos WHERE idavideo = ?");
            pst.setLong(1,id);
            rs=pst.executeQuery();
            if (rs.next()) {
                videoModel =  new VideoModel(rs.getLong("idvideo"),rs.getLong("idcourse"),
                        rs.getString("title"),rs.getString("link"));
                return  videoModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public void insert(VideoDTO videoDTO){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("INSERT INTO videos(idcourse,title,link) VALUES (?,?,?)");
            pst.setLong(1,videoDTO.getIdCourse());
            pst.setString(2,videoDTO.getTitle());
            pst.setString(3,videoDTO.getLink());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public void update(VideoDTO videoDTO){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("UPDATE videos SET idcourse=?,title=?,link=? WHERE idvideo=?");
            pst.setLong(1,videoDTO.getIdCourse());
            pst.setString(2,videoDTO.getTitle());
            pst.setString(3,videoDTO.getLink());
            pst.setLong(4,videoDTO.getIdVideo());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public void delete(long id){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("DELETE FROM ttcscongoc.videos where idvideo=?");
            pst.setLong(1,id);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public ArrayList<VideoModel> findByIdCourse(long id){
        ArrayList<VideoModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM videos WHERE idcourse = ?");
            pst.setLong(1,id);
            rs=pst.executeQuery();
            while (rs.next()){
                VideoModel videoModel =  new VideoModel(rs.getLong("idvideo"),rs.getLong("idcourse"),
                        rs.getString("title"),rs.getString("link"));
                ds.add(videoModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }
}
