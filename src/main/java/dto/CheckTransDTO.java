package dto;

import model.CourseModel;

import java.util.ArrayList;
import java.util.Date;

public class CheckTransDTO {
    private long idactor;
    private String email,name,gender,birth,phone,address;
    private ArrayList<CourseModel> courses;

    public CheckTransDTO() {
        courses = new ArrayList<>();
    }
    public void addCourse(CourseModel courseModel){
        courses.add(courseModel);
    }
    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public ArrayList<CourseModel> getCourses() {
        return courses;
    }

    public void setCourses(ArrayList<CourseModel> courses) {
        this.courses = courses;
    }

    public long getIdactor() {
        return idactor;
    }

    public void setIdactor(long idactor) {
        this.idactor = idactor;
    }

    @Override
    public String toString() {
        return "CheckTransDTO{" +
                "email='" + email + '\'' +
                ", name='" + name + '\'' +
                ", gender='" + gender + '\'' +
                ", birth='" + birth + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                ", courses=" + courses +
                '}';
    }

}
