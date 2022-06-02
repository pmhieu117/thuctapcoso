package dto;

public class CartDTO {
    private int bought;
    private long idcourse,idactor;

    public CartDTO() {
    }

    public CartDTO(int bought, long idcourse, long idactor) {
        this.bought = bought;
        this.idcourse = idcourse;
        this.idactor = idactor;
    }

    public int getBought() {
        return bought;
    }

    public void setBought(int bought) {
        this.bought = bought;
    }

    public long getIdcourse() {
        return idcourse;
    }

    public void setIdcourse(long idcourse) {
        this.idcourse = idcourse;
    }

    public long getIdactor() {
        return idactor;
    }

    public void setIdactor(long idactor) {
        this.idactor = idactor;
    }
}
