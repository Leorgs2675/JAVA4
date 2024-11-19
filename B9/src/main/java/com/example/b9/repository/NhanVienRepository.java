package com.example.b9.repository;

import com.example.b9.entity.NhanVien;
import com.example.b9.utils.HibernateUtils;
import java.util.List;
import org.hibernate.Session;

public class NhanVienRepository {
    private Session session;
    public  NhanVienRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<NhanVien> getAll(){
        return session.createQuery("from NhanVien").list();
    }
    public NhanVien getOne(Long id) {
        return session.get(NhanVien.class, id);
    }
    public void save(NhanVien nhanVien) {
        try {
            session.getTransaction().begin();
            session.save(nhanVien);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(NhanVien nhanVien) {
        try {
            session.getTransaction().begin();
            session.update(nhanVien);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(NhanVien nhanVien) {
        try {
            session.getTransaction().begin();
            session.delete(nhanVien);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
        System.out.printf(new NhanVienRepository().getAll().toString());
    }
}
