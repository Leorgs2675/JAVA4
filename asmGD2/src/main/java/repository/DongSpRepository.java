package repository;

import entity.DongSp;
import entity.DongSp;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class DongSpRepository {
    private Session session;
    public DongSpRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<DongSp> getAll() {
        return session.createQuery("from DongSp ").list();
    }
    public DongSp findById(int id) {
        return session.get(DongSp.class, id);
    }
    public void add(DongSp dsp) {
        try {
            session.getTransaction().begin();
            session.persist(dsp);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(DongSp dsp) {
        try {
            session.getTransaction().begin();
            session.merge(dsp);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(DongSp dsp) {
        try {
            session.getTransaction().begin();
            session.delete(dsp);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        System.out.println(new DongSpRepository().getAll());
    }
}

