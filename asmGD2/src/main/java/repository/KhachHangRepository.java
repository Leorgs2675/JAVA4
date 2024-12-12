package repository;

import entity.KhachHang;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class KhachHangRepository {
    private Session session;
    public KhachHangRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<KhachHang> getAll() {
        return session.createQuery("from KhachHang ").list();
    }
    public KhachHang findById(int id) {
        return session.get(KhachHang.class, id);
    }
    public void add(KhachHang kh) {
        try {
            session.getTransaction().begin();
            session.persist(kh);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(KhachHang kh) {
        try {
            session.getTransaction().begin();
            session.merge(kh);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(KhachHang kh) {
        try {
            session.getTransaction().begin();
            session.delete(kh);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        System.out.println(new KhachHangRepository().getAll());
    }
}
