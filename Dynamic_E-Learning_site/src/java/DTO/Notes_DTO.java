package DTO;

public class Notes_DTO 
{
    int n_id, b_id, sb_id;
    String notes_desc, notes_by, notes_file;

    public Notes_DTO() {
    }

    public Notes_DTO(int b_id, int sb_id, String notes_desc, String notes_by, String notes_file) {
        this.b_id = b_id;
        this.sb_id = sb_id;
        this.notes_by = notes_by;
        this.notes_desc = notes_desc;
        this.notes_file = notes_file;
    }

    public Notes_DTO(int n_id, int b_id, int sb_id, String notes_desc, String notes_by, String notes_file) {
        this.n_id = n_id;
        this.b_id = b_id;
        this.sb_id = sb_id;
        this.notes_by = notes_by;
        this.notes_desc = notes_desc;
        this.notes_file = notes_file;
    }

    public int getN_id() {
        return n_id;
    }

    public void setN_id(int n_id) {
        this.n_id = n_id;
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

    public String getNotes_by() {
        return notes_by;
    }

    public void setNotes_by(String notes_by) {
        this.notes_by = notes_by;
    }

    public String getNotes_desc() {
        return notes_desc;
    }

    public void setNotes_desc(String notes_desc) {
        this.notes_desc = notes_desc;
    }

    public String getNotes_file() {
        return notes_file;
    }

    public void setNotes_file(String notes_file) {
        this.notes_file = notes_file;
    }
}