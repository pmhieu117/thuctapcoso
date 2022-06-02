package dto;

public class SetStatusCourseRequest {
    private long idcourse;

    public SetStatusCourseRequest() {
    }

    public SetStatusCourseRequest(long idcourse) {
        this.idcourse = idcourse;
    }

    public long getIdcourse() {
        return idcourse;
    }

    public void setIdcourse(long idcourse) {
        this.idcourse = idcourse;
    }
}
