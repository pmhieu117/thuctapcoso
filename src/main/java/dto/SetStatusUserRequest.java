package dto;

public class SetStatusUserRequest {
    private long idactor;

    public SetStatusUserRequest() {
    }

    public SetStatusUserRequest(long idactor) {
        this.idactor = idactor;
    }

    public long getIdactor() {
        return idactor;
    }

    public void setIdactor(long idactor) {
        this.idactor = idactor;
    }
}
