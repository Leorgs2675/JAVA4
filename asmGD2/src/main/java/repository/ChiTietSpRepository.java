package repository;

import entity.ChiTietSp;
import entity.DongSp;
import entity.MauSac;
import entity.Nsx;
import entity.SanPham;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class ChiTietSpRepository {
    private Session session;
    public ChiTietSpRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<SanPham> getSp() {
        return session.createQuery("from SanPham ").list();
    }
    public List<MauSac> getMs() {
        return session.createQuery("from MauSac ").list();
    }
    public List<Nsx> getNsx() {
        return session.createQuery("from Nsx ").list();
    }
    public List<DongSp> getDongSp() {
        return session.createQuery("from DongSp ").list();
    }
    public List<ChiTietSp> getAll() {
        return session.createQuery("from ChiTietSp ").list();
    }

    public ChiTietSp findById(int id) {
        return session.get(ChiTietSp.class, id);
    }
    public void add(ChiTietSp cv) {
        try {
            session.getTransaction().begin();
            session.persist(cv);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(ChiTietSp cv) {
        try {
            session.getTransaction().begin();
            session.merge(cv);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(ChiTietSp cv) {
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
        System.out.println(new ChiTietSpRepository().getDongSp());
    }
}
