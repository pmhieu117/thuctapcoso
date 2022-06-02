package dto;

public class ActorDTO {
    private long idactor;
    private String email,password,name,birth,role,gender,phone,address;

    public ActorDTO() {
    }

    public ActorDTO(long idactor, String email, String password, String name, String birth, String role, String gender, String phone, String address) {
        this.idactor = idactor;
        this.email = email;
        this.password = password;
        this.name = name;
        this.birth = birth;
        this.role = role;
        this.gender = gender;
        this.phone = phone;
        this.address = address;
    }

    public long getIdactor() {
        return idactor;
    }

    public void setIdactor(long idactor) {
        this.idactor = idactor;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getBirth() {
        return birth;
    }

    public void setBirth(String birth) {
        this.birth = birth;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public String getGender() {
        return gender;
    }

    public void setGender(String gender) {
        this.gender = gender;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    @Override
    public String toString() {
        return "ActorDTO{" +
                "idactor=" + idactor +
                ", email='" + email + '\'' +
                ", password='" + password + '\'' +
                ", name='" + name + '\'' +
                ", birth='" + birth + '\'' +
                ", role='" + role + '\'' +
                ", gender='" + gender + '\'' +
                ", phone='" + phone + '\'' +
                ", address='" + address + '\'' +
                '}';
    }
}
