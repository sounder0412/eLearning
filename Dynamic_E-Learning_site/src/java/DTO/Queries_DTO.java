package DTO;

public class Queries_DTO 
{
    int q_id;
    String username, q_msg, admin_rply_msg;

    public Queries_DTO() {
    }

    public Queries_DTO(int q_id, String username, String q_msg, String admin_rply_msg) {
        this.q_id = q_id;
        this.username = username;
        this.q_msg = q_msg;
        this.admin_rply_msg = admin_rply_msg;
    }

    public int getQ_id() {
        return q_id;
    }

    public void setQ_id(int q_id) {
        this.q_id = q_id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getQ_msg() {
        return q_msg;
    }

    public void setQ_msg(String q_msg) {
        this.q_msg = q_msg;
    }

    public String getAdmin_rply_msg() {
        return admin_rply_msg;
    }

    public void setAdmin_rply_msg(String admin_rply_msg) {
        this.admin_rply_msg = admin_rply_msg;
    }  
}