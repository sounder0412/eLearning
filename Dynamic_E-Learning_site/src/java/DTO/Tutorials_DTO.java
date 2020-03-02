package DTO;

public class Tutorials_DTO 
{
    int t_id, b_id, sb_id;
    String t_topic, t_by, t_desc, t_file;

    public Tutorials_DTO() {
    }

    public Tutorials_DTO(int b_id, int sb_id, String t_topic, String t_by, String t_desc, String t_file) {
        this.b_id = b_id;
        this.sb_id = sb_id;
        this.t_topic = t_topic;
        this.t_by = t_by;
        this.t_desc = t_desc;
        this.t_file = t_file;
    }

    public Tutorials_DTO(int t_id, int b_id, int sb_id, String t_topic, String t_by, String t_desc, String t_file) {
        this.t_id = t_id;
        this.b_id = b_id;
        this.sb_id = sb_id;
        this.t_topic = t_topic;
        this.t_by = t_by;
        this.t_desc = t_desc;
        this.t_file = t_file;
    }

    public int getT_id() {
        return t_id;
    }

    public void setT_id(int t_id) {
        this.t_id = t_id;
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

    public String getT_topic() {
        return t_topic;
    }

    public void setT_topic(String t_topic) {
        this.t_topic = t_topic;
    }

    public String getT_by() {
        return t_by;
    }

    public void setT_by(String t_by) {
        this.t_by = t_by;
    }

    public String getT_desc() {
        return t_desc;
    }

    public void setT_desc(String t_desc) {
        this.t_desc = t_desc;
    }

    public String getT_file() {
        return t_file;
    }

    public void setT_file(String t_file) {
        this.t_file = t_file;
    }
   
}
