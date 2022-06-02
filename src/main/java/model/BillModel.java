package model;

import java.util.ArrayList;
import java.util.Date;

public class BillModel {
    private long idbill,idactor,status;
    private String name,address,phone,email,note;
    private ArrayList <BillDetailModel> billDetailModels;
    private float cost;

    public BillModel() {
    }

    public BillModel(long idbill, long idactor, long status, String name, String address, String phone, String email, String note, float cost) {
        this.idbill = idbill;
        this.idactor = idactor;
        this.status = status;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.note = note;
        this.billDetailModels = new ArrayList<>();
        this.cost = cost;
    }

    public BillModel(long idbill, long idactor, long status, String name, String address, String phone, String email, String note, ArrayList<BillDetailModel> billDetailModels, float cost) {
        this.idbill = idbill;
        this.idactor = idactor;
        this.status = status;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.note = note;
        this.billDetailModels = billDetailModels;
        this.cost = cost;
    }

    public BillModel(long idbill, long idactor, long status, String name, String address, String phone, String email, String note) {
        this.idbill = idbill;
        this.idactor = idactor;
        this.status = status;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.note = note;
        this.billDetailModels = new ArrayList<>();
    }
    public void addBillDetail(BillDetailModel billDetailModel){
        this.billDetailModels.add(billDetailModel);
        billDetailModel.setBillModel(this);
    }
    public ArrayList<BillDetailModel> getBillDetailModels(){
        return this.billDetailModels;
    }
    public long getIdbill() {
        return idbill;
    }

    public void setIdbill(long idbill) {
        this.idbill = idbill;
    }

    public long getIdactor() {
        return idactor;
    }

    public void setIdactor(long idactor) {
        this.idactor = idactor;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    public long getStatus() {
        return status;
    }

    public void setStatus(long status) {
        this.status = status;
    }
    public void setBillDetailModels(ArrayList<BillDetailModel> billDetailModels) {
        this.billDetailModels = billDetailModels;
    }

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }
}
