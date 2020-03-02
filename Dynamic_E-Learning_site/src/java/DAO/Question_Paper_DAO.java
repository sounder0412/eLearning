package DAO;

import P.ConnectionDB;
import DTO.Question_Paper_DTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Question_Paper_DAO
{
    public static int register(Question_Paper_DTO e)
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
    public static List<Question_Paper_DTO> view()
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Question_Paper_DTO");
        List<Question_Paper_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return al;
        return al;
        }
    public static List<Question_Paper_DTO> viewBranch_Subject_Wise(int bId, int sbId)
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Question_Paper_DTO n where n.b_id=? and n.sb_id=?");
        q.setInteger(0, bId);
        q.setInteger(1, sbId);
        List<Question_Paper_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return al;
        return al;
     }
    public static List<Question_Paper_DTO> viewSemWise(String sem, String branch)
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Question_Paper_DTO s where s.semester=? and s.sb_id=?");
        q.setString(0, sem);
        q.setString(1, branch);
        List<Question_Paper_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return al;
        return al;
        }
}