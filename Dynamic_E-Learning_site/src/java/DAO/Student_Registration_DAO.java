package DAO;

import P.ConnectionDB;
import DTO.Student_Registration_DTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Student_Registration_DAO 
{  
    public static int register(Student_Registration_DTO e)
    {
        Session s = ConnectionDB.getSession();
        Transaction tx = s.beginTransaction();
        Integer x = (Integer)s.save(e);
        tx.commit();
        s.close();
        if (x > 0)
            return 1;
        return 0;
    }
    public static List<Student_Registration_DTO> view()
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Student_Registration_DTO");
        List<Student_Registration_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return al;
        return al;
      }
     public static List<Student_Registration_DTO> validate(Student_Registration_DTO st)
     {
         Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Student_Registration_DTO s where s.username=? and s.password=?");
        q.setString(0, st.getUsername());
        q.setString(1, st.getPassword());
        List<Student_Registration_DTO> al = q.list();
        s.close();
        return al;
     }
}