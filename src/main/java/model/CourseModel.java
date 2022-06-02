package model;

import java.util.ArrayList;
import java.util.List;

public class CourseModel {
    private long idcourse,status,cost;
    private String title,content,linkintro,name,teacher,experience,linkimg;
    private ArrayList<VideoModel> dsvideo;

    public CourseModel() {

    }

    public CourseModel(long status, long cost, String title, String content, String linkintro, String name, String teacher, String experience, String linkimg) {
        this.status = status;
        this.cost = cost;
        this.title = title;
        this.content = content;
        this.linkintro = linkintro;
        this.name = name;
        this.teacher = teacher;
        this.experience = experience;
        this.linkimg = linkimg;
    }

    public CourseModel(long idcourse, long status, long cost, String title, String content, String linkintro, String name, String teacher, String experience, String linkimg) {
        this.idcourse = idcourse;
        this.status = status;
        this.cost = cost;
        this.title = title;
        this.content = content;
        this.linkintro = linkintro;
        this.name = name;
        this.teacher = teacher;
        this.experience = experience;
        this.linkimg = linkimg;
        this.dsvideo = new ArrayList<>();
    }

    public long getIdcourse() {
        return idcourse;
    }

    public void addVideoList(VideoModel vd){
        this.dsvideo.add(vd);
    }

    public ArrayList<VideoModel> getVideoList(){
        return this.dsvideo;
    }

    public void setIdcourse(long idcourse) {
        this.idcourse = idcourse;
    }

    public long getStatus() {
        return status;
    }

    public void setStatus(long status) {
        this.status = status;
    }

    public long getCost() {
        return cost;
    }

    public void setCost(long cost) {
        this.cost = cost;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }

    public String getLinkintro() {
        return linkintro;
    }

    public void setLinkintro(String linkintro) {
        this.linkintro = linkintro;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getTeacher() {
        return teacher;
    }

    public void setTeacher(String teacher) {
        this.teacher = teacher;
    }

    public String getExperience() {
        return experience;
    }

    public void setExperience(String experience) {
        this.experience = experience;
    }

    public String getLinkimg() {
        return linkimg;
    }

    public void setLinkimg(String linkimg) {
        this.linkimg = linkimg;
    }
}
