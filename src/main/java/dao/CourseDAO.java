package dao;

import model.CourseModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CourseDAO {
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;

    public List<CourseModel> findAll(){
        List<CourseModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM courses");
            rs=pst.executeQuery();
            while (rs.next()){
                CourseModel courseModel = new CourseModel(rs.getLong("idcourse"), rs.getLong("status"),
                        rs.getLong("cost"),rs.getString("title"), rs.getString("content"),
                        rs.getString("linkintro"), rs.getString("name"),rs.getString("teacher"),
                        rs.getString("experience"),rs.getString("linkimg"));
                ds.add(courseModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public CourseModel findbyId(long id){
        CourseModel courseModel = null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM courses WHERE idcourse = ?");
            pst.setLong(1,id);
            rs=pst.executeQuery();
            if (rs.next()) {
                courseModel = new CourseModel(rs.getLong("idcourse"), rs.getLong("status"),
                        rs.getLong("cost"),rs.getString("title"), rs.getString("content"),
                        rs.getString("linkintro"), rs.getString("name"),rs.getString("teacher"),
                        rs.getString("experience"),rs.getString("linkimg"));
                return courseModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public void insert(CourseModel courseModel){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("INSERT INTO courses(status,title,content,cost,linkintro,name,teacher,experience,linkimg) VALUES (?,?,?,?,?,?,?,?,?)");
            pst.setLong(1,courseModel.getStatus());
            pst.setString(2,courseModel.getTitle());
            pst.setString(3,courseModel.getContent());
            pst.setLong(4,courseModel.getCost());
            pst.setString(5,courseModel.getLinkintro());
            pst.setString(6,courseModel.getName());
            pst.setString(7,courseModel.getTeacher());
            pst.setString(8,courseModel.getExperience());
            pst.setString(9,courseModel.getLinkimg());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public void update(CourseModel courseModel){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("UPDATE courses SET status = ?,title=?,content=?,cost=?,linkintro=?,name= ?, teacher = ?,experience = ?,linkimg=? WHERE idcourse=?");
            pst.setLong(1,courseModel.getStatus());
            pst.setString(2,courseModel.getTitle());
            pst.setString(3,courseModel.getContent());
            pst.setLong(4,courseModel.getCost());
            pst.setString(5,courseModel.getLinkintro());
            pst.setString(6,courseModel.getName());
            pst.setString(7,courseModel.getTeacher());
            pst.setString(8,courseModel.getExperience());
            pst.setString(9,courseModel.getLinkimg());
            pst.setLong(10,courseModel.getIdcourse());
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
            pst = conn.prepareStatement("UPDATE courses SET status = 0 WHERE idcourse=?");
            pst.setLong(1,id);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
}
