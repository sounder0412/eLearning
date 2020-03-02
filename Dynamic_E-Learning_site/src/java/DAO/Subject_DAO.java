package DAO;

import P.ConnectionDB;
import DTO.Subject_DTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Subject_DAO 
{  
    public static int register(Subject_DTO e)
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
    public static List<Subject_DTO> viewAll()
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Subject_DTO");
        List<Subject_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return al;
        return al;
        }
    
    public static List<Subject_DTO> viewSemWise(String sem, String branch)
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Subject_DTO s where s.semester=? and s.b_id=?");
        q.setString(0, sem);
        q.setString(1, branch);
        List<Subject_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return al;
        return al;
        }
}