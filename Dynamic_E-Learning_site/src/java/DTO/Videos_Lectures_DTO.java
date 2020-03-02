package DTO;

public class Videos_Lectures_DTO 
{
    int v_id, b_id, sb_id;
    String l_topic, v_desc, t_name, v_file;

    public Videos_Lectures_DTO() {
    }

    public Videos_Lectures_DTO(int b_id, int sb_id, String l_topic, String v_desc, String t_name, String v_file) {
        this.b_id = b_id;
        this.sb_id = sb_id;
        this.l_topic = l_topic;
        this.v_desc = v_desc;
        this.t_name = t_name;
        this.v_file = v_file;
    }

    public Videos_Lectures_DTO(int v_id, int b_id, int sb_id, String l_topic, String v_desc, String t_name, String v_file) {
        this.v_id = v_id;
        this.b_id = b_id;
        this.sb_id = sb_id;
        this.l_topic = l_topic;
        this.v_desc = v_desc;
        this.t_name = t_name;
        this.v_file = v_file;
    }

    public int getV_id() {
        return v_id;
    }

    public void setV_id(int v_id) {
        this.v_id = v_id;
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

    public String getL_topic() {
        return l_topic;
    }

    public void setL_topic(String l_topic) {
        this.l_topic = l_topic;
    }

    public String getV_desc() {
        return v_desc;
    }

    public void setV_desc(String v_desc) {
        this.v_desc = v_desc;
    }

    public String getT_name() {
        return t_name;
    }

    public void setT_name(String t_name) {
        this.t_name = t_name;
    }

    public String getV_file() {
        return v_file;
    }

    public void setV_file(String v_file) {
        this.v_file = v_file;
    }    
}