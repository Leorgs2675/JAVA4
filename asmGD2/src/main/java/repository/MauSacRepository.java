package repository;

import entity.MauSac;
import entity.Nsx;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class MauSacRepository {
    private Session session;
    public MauSacRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<MauSac> getAll() {
        return session.createQuery("from MauSac ").list();
    }
    public MauSac findById(int id) {
        return session.get(MauSac.class, id);
    }
    public void add(MauSac nsx) {
        try {
            session.getTransaction().begin();
            session.persist(nsx);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(MauSac nsx) {
        try {
            session.getTransaction().begin();
            session.merge(nsx);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(MauSac nsx) {
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
        System.out.println(new MauSacRepository().getAll());
    }
}
