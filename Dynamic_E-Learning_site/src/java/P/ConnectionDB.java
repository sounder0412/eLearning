package P;

import org.hibernate.Session;
import org.hibernate.cfg.Configuration;

public class ConnectionDB 
{
    public static Session getSession()
    {
        return new Configuration().configure("hibernate.cfg.xml").buildSessionFactory().openSession();
    }
}