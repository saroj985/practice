package entity;

public class Passenger {
    private String name;
    private String email;
    private Integer mobile;
    private String general;
    private String seniorCitizen;
    private String physicallyHandicapped;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public Integer getMobile() {
        return mobile;
    }

    public void setMobile(Integer mobile) {
        this.mobile = mobile;
    }

    public String getGeneral() {
        return general;
    }

    public void setGeneral(String general) {
        this.general = general;
    }

    public String getSeniorCitizen() {
        return seniorCitizen;
    }

    public void setSeniorCitizen(String seniorCitizen) {
        this.seniorCitizen = seniorCitizen;
    }

    public String getPhysicallyHandicapped() {
        return physicallyHandicapped;
    }

    public void setPhysicallyHandicapped(String physicallyHandicapped) {
        this.physicallyHandicapped = physicallyHandicapped;
    }
}
