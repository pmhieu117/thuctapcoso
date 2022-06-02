package dao;
import dto.CartDTO;
import model.CartModel;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CartDAO {
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;
    public List<CartModel> findAll(){
        List<CartModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM carts");
            rs=pst.executeQuery();
            while (rs.next()){
                CartModel cartModel = new CartModel(rs.getLong("idcart"),rs.getLong("idactor"),
                        rs.getLong("idcourse"), rs.getInt("bought"));
                ds.add(cartModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public CartModel findById(long id){
        CartModel cartModel = null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM carts WHERE idcart = ?");
            pst.setLong(1,id);
            rs=pst.executeQuery();
            if (rs.next()) {
                cartModel = new CartModel(rs.getLong("idcart"),rs.getLong("idactor"),rs.getLong("idcourse"),
                        rs.getInt("bought"));
                return cartModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public void insert(CartDTO cartDTO){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("INSERT INTO carts(idactor,idcourse,bought) VALUES (?,?,?)");
            pst.setLong(1,cartDTO.getIdactor());
            pst.setLong(2,cartDTO.getIdcourse());
            pst.setLong(3,cartDTO.getBought());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }

    public void update(long idactor,long idcourse){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("UPDATE carts SET bought=1 WHERE idactor = ? && idcourse = ?");
            pst.setLong(1,idactor);
            pst.setLong(2,idcourse);
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
            pst = conn.prepareStatement("UPDATE carts  WHERE idactor=?");
            pst.setLong(1,id);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public CartModel check(long idactor,long idcourse){
        CartModel cartModel=null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM carts WHERE idactor = ?&&idcourse=?");
            pst.setLong(1,idactor);
            pst.setLong(2,idcourse);
            rs=pst.executeQuery();
            if (rs.next()) {
                cartModel = new CartModel(rs.getLong("idcart"),rs.getLong("idactor"),rs.getLong("idcourse"),
                        rs.getInt("bought"));
                return cartModel;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }
    public ArrayList<CartModel> findByIdActor(long id){
        ArrayList<CartModel> ds=new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM carts WHERE idactor = ?");
            pst.setLong(1,id);
            rs=pst.executeQuery();
            while (rs.next()){
                CartModel cartModel = new CartModel(rs.getLong("idcart"),rs.getLong("idactor"),
                        rs.getLong("idcourse"), rs.getInt("bought"));
                ds.add(cartModel);
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
