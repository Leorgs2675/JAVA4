package repository;

import entity.SanPham;
import java.util.List;
import org.hibernate.Session;
import org.hibernate.query.Query;
import utils.HibernateUtils;

public class SanPhamRepository {
    private Session session;
    public SanPhamRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<SanPham> getAll() {
        return session.createQuery("from SanPham").list();
    }
    public SanPham getById(int id) {
        return session.get(SanPham.class, id);
    }
    public void save(SanPham sanPham) {
        try {
            session.beginTransaction();
            session.persist(sanPham);
            session.getTransaction().commit();
        }catch (Exception e) {
            session.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public List<SanPham> phanTranghql (Integer pageNo,Integer pageSize) {
        int offset = pageNo*pageSize;
        String hql = "SELECT s FROM SanPham s ORDER BY s.id";
        Query query = session.createQuery(hql);
        query.setFirstResult(offset);
        query.setMaxResults(pageSize);
        return query.getResultList();
    }
    public  long countProduct (){
        Long count = (Long) session.createQuery("select count(*) from SanPham").uniqueResult();
        return count;
    }
    public static void main(String[] args) {
        System.out.println(new SanPhamRepository().countProduct());
    }
}
