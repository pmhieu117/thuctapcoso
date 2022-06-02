package dao;
import dto.BillDTO;
import model.BillDetailModel;
import model.BillModel;
import model.CourseModel;

import java.sql.*;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.util.ArrayList;
import java.util.List;

public class BillDAO {
    private Connection conn;
    private PreparedStatement pst;
    private ResultSet rs;

    public List<BillModel> findAll(){
        List<BillModel> ds= new ArrayList<>();
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM bill");
            rs=pst.executeQuery();
            BillDetailDAO billDetailDAO = new BillDetailDAO();
            while (rs.next()){
                long idbill= rs.getLong("idbill");
                ArrayList <BillDetailModel> billDetailModels = (ArrayList<BillDetailModel>) new BillDetailDAO().findByIdBill(idbill);
                BillModel billModel= new BillModel(rs.getLong("idbill"),rs.getLong("idactor"),
                        rs.getInt("status"), rs.getString("name"),rs.getString("address"),
                        rs.getString("phone"), rs.getString("email"),rs.getString("note"),billDetailModels,
                        rs.getFloat("cost"));
                billModel.setBillDetailModels((ArrayList<BillDetailModel>) billDetailDAO.findByIdBill(billModel.getIdbill()));
                ds.add(billModel);
            }
            return ds;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public BillModel findById(long idbill){
        BillModel billModel= null;
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("SELECT * FROM bill WHERE idbill = ?");
            pst.setLong(1,idbill);
            rs=pst.executeQuery();
            BillDetailDAO billDetailDAO = new BillDetailDAO();
            while (rs.next()){
                ArrayList <BillDetailModel> billDetailModels = (ArrayList<BillDetailModel>) new BillDetailDAO().findByIdBill(idbill);
                billModel= new BillModel(rs.getLong("idbill"),rs.getLong("idactor"),
                        rs.getInt("status"), rs.getString("name"),rs.getString("address"),
                        rs.getString("phone"), rs.getString("email"),rs.getString("note"),billDetailModels,
                        rs.getFloat("cost"));
                billModel.setBillDetailModels((ArrayList<BillDetailModel>) billDetailDAO.findByIdBill(billModel.getIdbill()));
            }
            return billModel;
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
        return null;
    }

    public Long insert(BillModel billModel){
        try {
            Long id = null;
            conn=DBConnect.open();
            pst = conn.prepareStatement("INSERT INTO bill(idactor,status,name,address,phone,email,note,cost) VALUES (?,?,?,?,?,?,?,?)", Statement.RETURN_GENERATED_KEYS);
            pst.setLong(1,billModel.getIdactor());
            pst.setLong(2,billModel.getStatus());
            pst.setString(3,billModel.getName());
            pst.setString(4,billModel.getAddress());
            pst.setString(5,billModel.getPhone());
            pst.setString(6,billModel.getEmail());
            pst.setString(7,billModel.getNote());
            pst.setFloat(8,billModel.getCost());
            pst.executeUpdate();
            rs = pst.getGeneratedKeys();
//            BillDetailDAO billDetailDAO = new BillDetailDAO();
//            for (BillDetailModel i : billModel.getBillDetailModels()){
//                billDetailDAO.insert(i);
//            }
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
    public void updateStatus(long idbill){
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("UPDATE bill SET status=1 WHERE idbill = ?");
            pst.setLong(1,idbill);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
    public void deleteById(long idbill){
        BillDetailDAO billDetailDAO = new BillDetailDAO();
        billDetailDAO.deleteByIdBill(idbill);
        try {
            conn=DBConnect.open();
            pst = conn.prepareStatement("DELETE FROM bill WHERE idbill = ?");
            pst.setLong(1,idbill);
            pst.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            DBConnect.close(conn,pst,rs);
        }
    }
}
