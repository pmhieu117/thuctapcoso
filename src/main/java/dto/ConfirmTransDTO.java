package dto;

import java.util.ArrayList;

public class ConfirmTransDTO {
    private long idbill, idactor;
    private ArrayList<Long> arrIdCourse;

    public ConfirmTransDTO() {
        arrIdCourse = new ArrayList<>();
    }

    public long getIdbill() {
        return idbill;
    }

    public void setIdbill(long idbill) {
        this.idbill = idbill;
    }

    public long getIdactor() {
        return idactor;
    }

    public void setIdactor(long idactor) {
        this.idactor = idactor;
    }

    public ArrayList<Long> getArrIdCourse() {
        return arrIdCourse;
    }

    public void setArrIdCourse(ArrayList<Long> arrIdCourse) {
        this.arrIdCourse = arrIdCourse;
    }

    @Override
    public String toString() {
        return "ConfirmTransDTO{" +
                "idactor=" + idactor +
                ", arrIdCourse=" + arrIdCourse +
                '}';
    }
}
