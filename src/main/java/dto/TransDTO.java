package dto;

import dao.CourseDAO;
import model.CourseModel;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public class TransDTO {
    private String name, address,phone,email, note;
    private ArrayList<Integer> arrId=new ArrayList<>();

    public TransDTO() {
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

    public ArrayList<Integer> getArrId() {
        return arrId;
    }

    public void setArrId(ArrayList<Integer> arrId) {
        this.arrId = arrId;
    }

    public String getNote() {
        return note;
    }

    public void setNote(String note) {
        this.note = note;
    }

    @Override
    public String toString() {
        return "TransDTO{" +
                "name='" + name + '\'' +
                ", address='" + address + '\'' +
                ", phone='" + phone + '\'' +
                ", email='" + email + '\'' +
                ", arrId=" + arrId +
                '}';
    }
}
