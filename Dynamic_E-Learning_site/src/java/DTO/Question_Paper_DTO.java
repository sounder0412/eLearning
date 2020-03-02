package DTO;

public class Question_Paper_DTO 
{
    int qp_id, b_id, sb_id;
    String qp_file, year;

    public Question_Paper_DTO() {
    }

    public Question_Paper_DTO(int b_id, int sb_id, String qp_file, String year) {
        this.b_id = b_id;
        this.sb_id = sb_id;
        this.qp_file = qp_file;
        this.year = year;
    }

    public Question_Paper_DTO(int qp_id, int b_id, int sb_id, String qp_file, String year) {
        this.qp_id = qp_id;
        this.b_id = b_id;
        this.sb_id = sb_id;
        this.qp_file = qp_file;
        this.year = year;
    }

    public int getQp_id() {
        return qp_id;
    }

    public void setQp_id(int qp_id) {
        this.qp_id = qp_id;
    }

    public int getB_id() {
        return b_id;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }

    public int getSb_id() {
        return sb_id;
    }

    public void setSb_id(int sb_id) {
        this.sb_id = sb_id;
    }

    public String getQp_file() {
        return qp_file;
    }

    public void setQp_file(String qp_file) {
        this.qp_file = qp_file;
    }

    public String getYear() {
        return year;
    }

    public void setYear(String year) {
        this.year = year;
    }
}