package model;

import dao.ActorDAO;

public class BlogModel {
    private long idblog;
    private String title,content,linkimg;
    private ActorModel actorModel;

    public BlogModel() {
    }

    public BlogModel(long idblog, String title, String content, String linkimg, long idactor) {
        this.idblog = idblog;
        this.title = title;
        this.content = content;
        this.linkimg = linkimg;
        this.actorModel = new ActorDAO().findbyId(idactor);
    }

    public long getIdblog() {
        return idblog;
    }

    public void setIdblog(long idblog) {
        this.idblog = idblog;
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

    public String getLinkimg() {
        return linkimg;
    }

    public void setLinkimg(String linkimg) {
        this.linkimg = linkimg;
    }

    public ActorModel getActorModel() {
        return actorModel;
    }

    public void setActorModel(ActorModel actorModel) {
        this.actorModel = actorModel;
    }
}
