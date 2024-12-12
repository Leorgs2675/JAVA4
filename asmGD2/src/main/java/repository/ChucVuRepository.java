package repository;

import entity.ChucVu;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class ChucVuRepository {
    private Session session;
    public ChucVuRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<ChucVu> getAll() {
        return session.createQuery("from ChucVu ").list();
    }
    public ChucVu findById(int id) {
        return session.get(ChucVu.class, id);
    }
    public void add(ChucVu cv) {
        try {
            session.getTransaction().begin();
            session.persist(cv);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(ChucVu cv) {
        try {
            session.getTransaction().begin();
            session.merge(cv);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(ChucVu cv) {
        try {
            session.getTransaction().begin();
            session.delete(cv);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        System.out.println(new ChucVuRepository().getAll());
    }
}
