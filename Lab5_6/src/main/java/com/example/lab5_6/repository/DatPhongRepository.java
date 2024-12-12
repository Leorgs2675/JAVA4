package com.example.lab5_6.repository;

import com.example.lab5_6.entity.DatPhong;
import com.example.lab5_6.utils.HibernateUtils;
import java.util.List;
import org.hibernate.Session;

public class DatPhongRepository {
    private Session session;
    public DatPhongRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<DatPhong> findAll() {
        return session.createQuery("from DatPhong").list();
    }
    public DatPhong findById(int id) {
        return session.get(DatPhong.class, id);
    }
    public void save(DatPhong dp) {
        try {
            session.getTransaction().begin();
            session.persist(dp);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(DatPhong dp) {
        try {
            session.getTransaction().begin();
            session.merge(dp);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(DatPhong dp) {
        try {
            session.getTransaction().begin();
            session.delete(dp);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.println(new DatPhongRepository().findAll());
    }
}
