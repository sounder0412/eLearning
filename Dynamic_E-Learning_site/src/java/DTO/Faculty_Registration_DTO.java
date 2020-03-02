package DTO;

public class Faculty_Registration_DTO 
{
    int f_id;
    String username, fullname, email, password;
    long phone;

    public Faculty_Registration_DTO() {
    }

    public Faculty_Registration_DTO(String username, String fullname, String email, String password, long phone) {
        this.username = username;
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    public Faculty_Registration_DTO(int f_id, String username, String fullname, String email, String password, long phone) {
        this.f_id = f_id;
        this.username = username;
        this.fullname = fullname;
        this.email = email;
        this.password = password;
        this.phone = phone;
    }

    public int getF_id() {
        return f_id;
    }

    public void setF_id(int f_id) {
        this.f_id = f_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFullname() {
        return fullname;
    }

    public void setFullname(String fullname) {
        this.fullname = fullname;
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

    public long getPhone() {
        return phone;
    }

    public void setPhone(long phone) {
        this.phone = phone;
    }
    
    
}