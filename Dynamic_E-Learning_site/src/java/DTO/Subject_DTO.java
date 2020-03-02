package DTO;

public class Subject_DTO 
{
    int sb_id, b_id;
    String s_name, semester;

    public Subject_DTO() {
    }

    public Subject_DTO(int b_id, String s_name, String semester) {
        this.b_id = b_id;
        this.s_name = s_name;
        this.semester = semester;
    }

    public Subject_DTO(int sb_id, int b_id, String s_name, String semester) {
        this.sb_id = sb_id;
        this.b_id = b_id;
        this.s_name = s_name;
        this.semester = semester;
    }

    public int getSb_id() {
        return sb_id;
    }

    public void setSb_id(int sb_id) {
        this.sb_id = sb_id;
    }

    public int getB_id() {
        return b_id;
    }

    public void setB_id(int b_id) {
        this.b_id = b_id;
    }

    public String getS_name() {
        return s_name;
    }

    public void setS_name(String s_name) {
        this.s_name = s_name;
    }

    public String getSemester() {
        return semester;
    }

    public void setSemester(String semester) {
        this.semester = semester;
    }

    
}