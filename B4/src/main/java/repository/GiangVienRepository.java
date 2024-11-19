package repository;

import entity.GiangVien;
import jakarta.persistence.Query;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

public class GiangVienRepository {
    private Session ss;

    public GiangVienRepository() {
        ss = HibernateUtils.getFACTORY().openSession();
    }
    public List<GiangVien>getAll(){
        return ss.createQuery("FROM GiangVien").list();
    }
    public List<GiangVien> timKiem(String name ) {
        String hql = "SELECT gv FROM GiangVien gv WHERE gvTen LIKE ?1";
        Query query = ss.createQuery(hql);
        query.setParameter(1, "%" + name + "%");
        return query.getResultList();
    }
    public List<GiangVien> timGVNu(Boolean gioiTinh ) {
        String hql = "SELECT gv FROM GiangVien gv WHERE gvGioiTinh = ?1";
        Query query = ss.createQuery(hql);
        query.setParameter(1,gioiTinh);
        return query.getResultList();
    }

    public GiangVien getOne(Long id) {
        return ss.get(GiangVien.class, id);
    }
    public void add(GiangVien gv) {
        try {
            ss.getTransaction().begin();
            ss.persist(gv);
            ss.getTransaction().commit();
        } catch (Exception e) {
            ss.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(GiangVien gv) {
        try {
            ss.getTransaction().begin();
            ss.merge(gv);
            ss.getTransaction().commit();
        } catch (Exception e) {
            ss.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(GiangVien gv) {
        try {
            ss.getTransaction().begin();
            ss.delete(gv);
            ss.getTransaction().commit();
        } catch (Exception e) {
            ss.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {

        System.out.println(new GiangVienRepository().timGVNu(false));
    }
}
