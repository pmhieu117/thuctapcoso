package model;

import dao.ActorDAO;
import dao.CourseDAO;

import java.util.Date;

public class CartModel {
    private long idCart;
    private ActorModel actorModel;
    private CourseModel courseModel;
    private int bought;

    public CartModel() {
    }

    public CartModel(long idCart, long idactor, long idcourse,int bought) {
        this.idCart = idCart;
        this.actorModel = new ActorDAO().findbyId(idactor);
        this.courseModel = new CourseDAO().findbyId(idcourse);
        this.bought=bought;
    }

    public long getIdCart() {
        return idCart;
    }

    public void setIdCart(long idCart) {
        this.idCart = idCart;
    }

    public ActorModel getActorModel() {
        return actorModel;
    }

    public void setActorModel(ActorModel actorModel) {
        this.actorModel = actorModel;
    }

    public CourseModel getCourseModel() {
        return courseModel;
    }

    public void setCourseModel(CourseModel courseModel) {
        this.courseModel = courseModel;
    }

    public int getBought() {
        return bought;
    }

    public void setBought(int bought) {
        this.bought = bought;
    }
}
