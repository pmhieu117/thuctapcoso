package dto;

public class BlogDTO {
    private long idactor, idblog;
    private String title,content,linkimg;

    public BlogDTO() {
    }

    public BlogDTO(long idactor, long idblog, String title, String content, String linkimg) {
        this.idactor = idactor;
        this.idblog = idblog;
        this.title = title;
        this.content = content;
        this.linkimg = linkimg;
    }

    public long getIdactor() {
        return idactor;
    }

    public void setIdactor(long idactor) {
        this.idactor = idactor;
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
}
