package model;

import dao.CourseDAO;

public class VideoModel {
    private long idVideo,idCourse;
    private String title,link;
    private CourseModel courseModel;

    public VideoModel(long idVideo, long idCourse, String title, String link) {
        this.idVideo = idVideo;
        this.idCourse = idCourse;
        this.title = title;
        this.link = link;
    }
    public VideoModel(long idVideo, long idCourse, String title, String link, CourseModel courseModel) {
        this.idVideo = idVideo;
        this.idCourse = idCourse;
        this.title = title;
        this.link = link;
        this.courseModel = courseModel;
        courseModel.addVideoList(this);
    }

    public long getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(long idVideo) {
        this.idVideo = idVideo;
    }

    public long getIdCourse() {
        return idCourse;
    }

    public void setIdCourse(long idCourse) {
        this.idCourse = idCourse;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLink() {
        return link;
    }

    public void setLink(String link) {
        this.link = link;
    }
}
