package dto;

import model.BillDetailModel;

import java.util.ArrayList;

public class BillDTO {
    private long idbill,idactor,status;
    private String name,address,phone,email,note;
    private float cost;
    private ArrayList<Integer> arrId = new ArrayList<>();

    public BillDTO() {
    }

    public BillDTO(long idbill, long idactor, long status, String name, String address, String phone, String email, String note, float cost, ArrayList<Integer> arrId) {
        this.idbill = idbill;
        this.idactor = idactor;
        this.status = status;
        this.name = name;
        this.address = address;
        this.phone = phone;
        this.email = email;
        this.note = note;
        this.cost = cost;
        this.arrId = arrId;
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

    public long getStatus() {
        return status;
    }

    public void setStatus(long status) {
        this.status = status;
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

    public float getCost() {
        return cost;
    }

    public void setCost(float cost) {
        this.cost = cost;
    }

    public ArrayList<Integer> getArrId() {
        return arrId;
    }

    public void setArrId(ArrayList<Integer> arrId) {
        this.arrId = arrId;
    }

    @Override
    public String toString() {
        return "BillDTO{" +
                "idbill=" + idbill +
                ", idactor=" + idactor +
                ", status=" + status +
                ", name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", note='" + note + '\'' +
                ", cost=" + cost +
                ", arrId=" + arrId +
                '}';
    }
}
