package DAO;

import DTO.Branch_DTO;
import P.ConnectionDB;
import java.util.List;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.Transaction;

public class Branch_DAO 
{  
    public static int register(Branch_DTO e)
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
    public static List<Branch_DTO> view()
    {
        Session s = ConnectionDB.getSession();
        Query q = s.createQuery("from Branch_DTO");
        List<Branch_DTO> al = q.list();
        s.close();
        if(al.isEmpty())
            return al;
        return al;
        }
    public static Branch_DTO search(int branch_id)
    {
        Session s = ConnectionDB.getSession();
        Branch_DTO bd = (Branch_DTO)s.get(Branch_DTO.class, branch_id);
        s.close();
        return bd;
    }
}