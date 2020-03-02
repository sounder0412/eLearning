package DTO;

public class Branch_DTO 
{
    int b_id;
    String b_name, b_desc;

    public Branch_DTO() {
    }

    public Branch_DTO(int b_id, String b_name, String b_desc) {
        this.b_id = b_id;
        this.b_name = b_name;
        this.b_desc = b_desc;
    }

    public int getB_id() {
        return b_id;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }

    public String getB_name() {
        return b_name;
    }

    public void setB_name(String b_name) {
        this.b_name = b_name;
    }

    public String getB_desc() {
        return b_desc;
    }

    public void setB_desc(String b_desc) {
        this.b_desc = b_desc;
    }   
}