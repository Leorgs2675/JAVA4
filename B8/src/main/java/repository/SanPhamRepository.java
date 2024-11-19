package repository;

import entity.DonViTinh;
import entity.SanPham;
import jakarta.persistence.Query;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

public class SanPhamRepository {
    private Session s;

    public SanPhamRepository(){
        s = HibernateUtils.getFACTORY().openSession();
    }
    public List<SanPham> getAll(){
        return s.createQuery("FROM SanPham ").list();
    }
    public List<DonViTinh> cbb(){
        return s.createQuery("FROM DonViTinh ").list();
    }
    public List<SanPham> phanTrang(Integer pageNo,Integer pageSize){
        int offset = pageNo * pageSize;
        String hql ="SELECT sp FROM SanPham sp ORDER BY sp.idCTSP";
        Query query = s.createQuery(hql);
        query.setFirstResult(offset);
        query.setMaxResults(pageSize);
        return query.getResultList();
    }
    public long countProducts() {
        Session session = HibernateUtils.getFACTORY().openSession();
        session.beginTransaction();

        Long count = (Long) session.createQuery("SELECT COUNT(p.idCTSP) FROM SanPham p").uniqueResult();

        session.getTransaction().commit();
        session.close();

        return count;
    }
    public SanPham getOne(Integer idCTSP){
       return s.get(SanPham.class,idCTSP);
    }
    public void add(SanPham sp){
        try {
            s.getTransaction().begin();
            s.persist(sp);
            s.getTransaction().commit();
        }catch (Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(SanPham sp){
        try {
            s.getTransaction().begin();
            s.delete(sp);
            s.getTransaction().commit();
        }catch (Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(SanPham sp){
            try {
                s.getTransaction().begin();
                s.merge(sp);
                s.getTransaction().commit();
            }catch (Exception e){
                s.getTransaction().rollback();
                e.printStackTrace();
            }
        }

    public static void main(String[] args) {
        System.out.println(new SanPhamRepository().getAll());
    }
}
