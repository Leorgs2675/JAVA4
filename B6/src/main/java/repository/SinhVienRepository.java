package repository;

import entity.Lop;
import entity.SinhVien;
import jakarta.persistence.Query;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

public class SinhVienRepository {
    private Session s;

    public SinhVienRepository() {
        s = HibernateUtils.getFACTORY().openSession();
    }
    public List<SinhVien> getAll() {
        return s.createQuery("FROM SinhVien ").list();
    }
    public List<Lop> getCB() {
        return s.createQuery("FROM Lop ").list();
    }

    public SinhVien getOne(Integer id) {
        return s.get(SinhVien.class, id);
    }
    public void add(SinhVien gv) {
        try {
            s.getTransaction().begin();
            s.persist(gv);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(SinhVien gv) {
        try {
            s.getTransaction().begin();
            s.merge(gv);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(SinhVien gv) {
        try {
            s.getTransaction().begin();
            s.delete(gv);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public List<SinhVien> timKiem(Long tuoi,int lopId ) {
        String hql = "SELECT gv FROM SinhVien gv WHERE tuoi = ?1 AND lopId = ?2";
        Query query = s.createQuery(hql);
        query.setParameter(1,  tuoi );
        query.setParameter(2,  lopId );
        return query.getResultList();
    }
    public List<SinhVien> timTop3( ) {
        String hql = "SELECT gv FROM SinhVien gv ORDER BY tuoi ASC";
        Query query = s.createQuery(hql);
        query.setMaxResults(3);
        return query.getResultList();
    }
    public List<SinhVien> phanTrangHql(Integer pageNo, Integer pageSize ) {
        int offset = pageNo * pageSize;
        String hql = "SELECT c from SinhVien c ORDER BY c.id ";
        Query query = s.createQuery(hql);
        query.setFirstResult(offset);
        query.setMaxResults(pageSize);
        return query.getResultList();
    }
    public long countProducts() {
        Session session = HibernateUtils.getFACTORY().openSession();
        session.beginTransaction();

        Long count = (Long) session.createQuery("SELECT COUNT(p.id) FROM SinhVien p").uniqueResult();

        session.getTransaction().commit();
        session.close();

        return count;
    }
    public static void main(String[] args) {
        System.out.println(new SinhVienRepository().getCB());
//        System.out.println(new SinhVienRepository().phanTrangHql(1,10));
    }
}
