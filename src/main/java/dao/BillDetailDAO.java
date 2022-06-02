package dao;

import model.BillDetailModel;
import model.BillModel;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BillDetailDAO {
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;

    public List<BillDetailModel> findAll(){
        List<BillDetailModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM billdetail");
            rs=pst.executeQuery();
            while (rs.next()){
                BillDetailModel billDetailModel = new BillDetailModel(rs.getLong("idbill"),
                        rs.getLong("idcourse"), rs.getLong("videonum"));
                ds.add(billDetailModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }
    public List<BillDetailModel> findByIdBill(long idbill){
        List<BillDetailModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM billdetail WHERE idbill= ?");
            pst.setLong(1,idbill);
            rs=pst.executeQuery();
            while (rs.next()){
                BillDetailModel billDetailModel = new BillDetailModel(rs.getLong("idbill"),
                        rs.getLong("idcourse"), rs.getLong("videonum"));
                ds.add(billDetailModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }
    public void insert(BillDetailModel billDetailModel){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("INSERT INTO billdetail(idbill,idcourse,videonum) VALUES (?,?,?)");
            pst.setLong(1,billDetailModel.getIdbill());
            pst.setLong(2,billDetailModel.getIdcourse());
            pst.setLong(3,billDetailModel.getVideonum());
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public void deleteByIdBill(long idbill){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("DELETE  FROM billdetail WHERE idbill=?");
            pst.setLong(1,idbill);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
}
