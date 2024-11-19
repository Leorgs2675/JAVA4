package repository;

import entity.MayTinh;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

public class MayTinhRepository {
    private Session s;
    public  MayTinhRepository(){
        s = HibernateUtils.getFACTORY().openSession();
    }
    public List<MayTinh> getAll() {
        return s.createQuery("FROM MayTinh ").list();
    }
    public MayTinh getOne(int id) {
        return s.get(MayTinh.class, id);
    }
    public void add(MayTinh c) {
        try {
            s.getTransaction().begin();
            s.persist(c);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(MayTinh c) {
        try {
            s.getTransaction().begin();
            s.merge(c);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(MayTinh id) {
        try {
            s.getTransaction().begin();
            s.delete(id);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
    }
}
