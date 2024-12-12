package repository;

import entity.CuaHang;
import entity.CuaHang;
import java.util.List;
import org.hibernate.Session;
import utils.HibernateUtils;

public class CuaHangRepository {
    private Session session;
    public CuaHangRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<CuaHang> getAll() {
        return session.createQuery("from CuaHang ").list();
    }
    public CuaHang findById(int id) {
        return session.get(CuaHang.class, id);
    }
    public void add(CuaHang ch) {
        try {
            session.getTransaction().begin();
            session.persist(ch);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(CuaHang ch) {
        try {
            session.getTransaction().begin();
            session.merge(ch);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(CuaHang ch) {
        try {
            session.getTransaction().begin();
            session.delete(ch);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public static void main(String[] args) {
        System.out.println(new CuaHangRepository().getAll());
    }
}
