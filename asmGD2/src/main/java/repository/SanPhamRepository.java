package repository;

import entity.SanPham;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class SanPhamRepository {
    private Session session;
    public SanPhamRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<SanPham> getAllSanPham() {
        return session.createQuery("from SanPham").list();
    }
    public SanPham findById(int id) {
        return session.get(SanPham.class, id);
    }
    public void save(SanPham sanPham) {
        try {
            session.getTransaction().begin();
            session.persist(sanPham);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(SanPham sanPham) {
        try {
            session.getTransaction().begin();
            session.merge(sanPham);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(SanPham sanPham) {
        try {
            session.getTransaction().begin();
            session.delete(sanPham);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {


    }
}
