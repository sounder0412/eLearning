package DAO;

import P.ConnectionDB;
import DTO.Faculty_Registration_DTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Faculty_Registration_DAO {

    public static int register(Faculty_Registration_DTO e) {
        Session s = ConnectionDB.getSession();
        Transaction tx = s.beginTransaction();
        Integer x = (Integer) s.save(e);
        tx.commit();
        s.close();
        if (x > 0) {
            return 1;
        }
        return 0;
    }

    public static List<Faculty_Registration_DTO> view() {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Faculty_Registration_DTO");
        List<Faculty_Registration_DTO> al = q.list();
        s.close();
        if (al.isEmpty()) {
            return al;
        }
        return al;
    }

    public static List<Faculty_Registration_DTO> validate(Faculty_Registration_DTO st) {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Faculty_Registration_DTO s where s.username=? and s.password=?");
        q.setString(0, st.getUsername());
        q.setString(1, st.getPassword());
        List<Faculty_Registration_DTO> al = q.list();
        s.close();
        return al;
    }
}
