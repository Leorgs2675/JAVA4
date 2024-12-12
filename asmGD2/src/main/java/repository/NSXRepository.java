package repository;

import entity.Nsx;
import entity.Nsx;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class NSXRepository {
    private Session session;
    public NSXRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<Nsx> getAll() {
        return session.createQuery("from Nsx ").list();
    }
    public Nsx findById(int id) {
        return session.get(Nsx.class, id);
    }
    public void save(Nsx nsx) {
        try {
            session.getTransaction().begin();
            session.persist(nsx);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(Nsx nsx) {
        try {
            session.getTransaction().begin();
            session.merge(nsx);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(Nsx nsx) {
        try {
            session.getTransaction().begin();
            session.delete(nsx);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.println(new NSXRepository().getAll());

    }
}
