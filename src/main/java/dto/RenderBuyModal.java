package dto;

public class RenderBuyModal {
    private long idactor;

    public RenderBuyModal() {
    }

    public RenderBuyModal(long idactor) {
        this.idactor = idactor;
    }

    public long getIdactor() {
        return idactor;
    }

    public void setIdactor(long idactor) {
        this.idactor = idactor;
    }

    @Override
    public String toString() {
        return "RenderBuyModal{" +
                "idactor=" + idactor +
                '}';
    }
}
