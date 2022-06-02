package model;

public class BillDetailModel {
    private long idbill,idcourse,videonum;
    private BillModel billModel;
    public BillDetailModel() {
    }

    public BillDetailModel(long idbill, long idcourse, long videonum) {
        this.idbill = idbill;
        this.idcourse = idcourse;
        this.videonum = videonum;
    }
    public void setBillModel(BillModel billModel){
        this.billModel = billModel;
    }
    public BillModel getBillModel(){
        return this.billModel;
    }
    public long getIdbill() {
        return idbill;
    }

    public void setIdbill(long idbill) {
        this.idbill = idbill;
    }

    public long getIdcourse() {
        return idcourse;
    }

    public void setIdcourse(long idcourse) {
        this.idcourse = idcourse;
    }

    public long getVideonum() {
        return videonum;
    }

    public void setVideonum(long videonum) {
        this.videonum = videonum;
    }

    @Override
    public String toString() {
        return "BillDetailModel{" +
                "idbill=" + idbill +
                ", idcourse=" + idcourse +
                ", videonum=" + videonum +
                ", billModel=" + billModel +
                '}';
    }
}
