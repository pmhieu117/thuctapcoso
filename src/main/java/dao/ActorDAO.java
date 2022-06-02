package dao;
import dto.ActorDTO;
import model.ActorModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class ActorDAO {
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;

    public List<ActorModel> findAll(){
        List<ActorModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM actor");
            rs=pst.executeQuery();
            while (rs.next()){
                ActorModel actorModel = new ActorModel(rs.getLong("idactor"),rs.getLong("status"),
                        rs.getString("email"), rs.getString("password"),
                        rs.getString("name"), rs.getString("birth"),
                        rs.getString("role"),rs.getString("gender"),
                        rs.getString("phone"),rs.getString("address"));
                ds.add(actorModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public ActorModel findbyId(long id){
        ActorModel actorModel = null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM actor WHERE idactor = ?");
            pst.setLong(1,id);
            rs=pst.executeQuery();
            if (rs.next()) {
                actorModel = new ActorModel(rs.getLong("idactor"), rs.getLong("status"),
                        rs.getString("email"), rs.getString("password"),
                        rs.getString("name"), rs.getString("birth"),
                        rs.getString("role"), rs.getString("gender"),
                        rs.getString("phone"), rs.getString("address"));
                return actorModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }
    public ActorModel findbyEmail(String email){
        ActorModel actorModel = null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM actor WHERE email = ?");
            pst.setString(1,email);
            rs=pst.executeQuery();
            if (rs.next()) {
                actorModel = new ActorModel(rs.getLong("idactor"), rs.getLong("status"),
                        rs.getString("email"), rs.getString("password"),
                        rs.getString("name"), rs.getString("birth"),
                        rs.getString("role"), rs.getString("gender"),
                        rs.getString("phone"), rs.getString("address"));
                return actorModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public Long insert(ActorModel actorModel){
        try {
            Long id = null;
            conn=DBConnect.open();
            pst = conn.prepareStatement("INSERT INTO actor(status,email,password,name,birth,role,gender,phone,address) VALUES (?,?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            pst.setLong(1,actorModel.getStatus());
            pst.setString(2,actorModel.getEmail());
            pst.setString(3,actorModel.getPassword());
            pst.setString(4,actorModel.getName());
            pst.setString(5,actorModel.getBirth());
            pst.setString(6,actorModel.getRole());
            pst.setString(7,actorModel.getGender());
            pst.setString(8,actorModel.getPhone());
            pst.setString(9,actorModel.getAddress());
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
    public void update(ActorModel actorModel){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("UPDATE actor SET status = ?,email = ?,password= ?,name= ?,birth= ?,role=?,gender=?,phone=?,address=? WHERE idactor=?");
            pst.setLong(1,actorModel.getStatus());
            pst.setString(2,actorModel.getEmail());
            pst.setString(3,actorModel.getPassword());
            pst.setString(4,actorModel.getName());
            pst.setString(5,actorModel.getBirth());
            pst.setString(6,actorModel.getRole());
            pst.setString(7,actorModel.getGender());
            pst.setString(8,actorModel.getPhone());
            pst.setString(9,actorModel.getAddress());
            pst.setLong(10,actorModel.getIdactor());
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
            pst = conn.prepareStatement("UPDATE actor SET status = 0 WHERE idactor=?");
            pst.setLong(1,id);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public ActorModel check(String email, String pass){
        ActorModel actorModel = null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM actor WHERE email = ? and  password = ?");
            pst.setString(1,email);
            pst.setString(2,pass);
            rs=pst.executeQuery();
            if (rs.next()) {
                actorModel = new ActorModel(rs.getLong("idactor"), rs.getLong("status"),
                        rs.getString("email"), rs.getString("password"),
                        rs.getString("name"), rs.getString("birth"),
                        rs.getString("role"), rs.getString("gender"),
                        rs.getString("phone"), rs.getString("address"));
                return actorModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }
//    DTO
}
