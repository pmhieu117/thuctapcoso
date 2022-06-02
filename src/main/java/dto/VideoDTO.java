package dto;

import model.CourseModel;

public class VideoDTO {
    private long idCourse;
    private String title,link;
    private long idVideo;

    public VideoDTO() {
    }

    public VideoDTO(long idCourse, String title, String link) {
        this.idCourse = idCourse;
        this.title = title;
        this.link = link;
    }

    public VideoDTO(long idCourse, String title, String link, long idVideo) {
        this.idCourse = idCourse;
        this.title = title;
        this.link = link;
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

    public long getIdVideo() {
        return idVideo;
    }

    public void setIdVideo(long idVideo) {
        this.idVideo = idVideo;
    }
}
