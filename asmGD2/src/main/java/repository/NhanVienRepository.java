package repository;

import entity.NhanVien;
import entity.ChucVu;
import entity.CuaHang;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class NhanVienRepository {
    private Session session;
    public NhanVienRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<CuaHang> getCh() {
        return session.createQuery("from CuaHang ").list();
    }
    public List<ChucVu> getCv() {
        return session.createQuery("from ChucVu ").list();
    }
    public List<NhanVien> getAll() {
        return session.createQuery("from NhanVien ").list();
    }

    public NhanVien findById(int id) {
        return session.get(NhanVien.class, id);
    }
    public void add(NhanVien cv) {
        try {
            session.getTransaction().begin();
            session.persist(cv);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(NhanVien cv) {
        try {
            session.getTransaction().begin();
            session.merge(cv);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(NhanVien cv) {
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
        System.out.println(new NhanVienRepository().getAll());
    }
}
