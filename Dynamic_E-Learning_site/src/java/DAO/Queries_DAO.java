package DAO;

import P.ConnectionDB;
import DTO.Queries_DTO;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Queries_DAO
{
    public static int register(Queries_DTO e)
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
    public static List<Queries_DTO> view()
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Queries_DTO");
        List<Queries_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return al;
        return al;
        }
}
