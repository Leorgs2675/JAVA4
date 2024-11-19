package repository;

import entity.Sach;
import entity.TacGia;
import jakarta.persistence.Query;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

public class SachRepository {
    private Session s;

    public SachRepository(){
        s= HibernateUtils.getFACTORY().openSession();
    }
    public List<Sach> getAll(){
        return s.createQuery("FROM Sach").list();
    }
    public List<Sach> timKiem(String ten, Integer tgId) {
        String hql = "SELECT s FROM Sach s WHERE tenSach like ?1 AND tgId = ?2";
        Query query = s.createQuery(hql);
        query.setParameter(1, '%'+ ten+'%' );
        query.setParameter(2, tgId );
        return query.getResultList();
    }
    public List<TacGia> getCB() {
        return s.createQuery("FROM TacGia ").list();
    }
    public Sach getOne(Integer id){
        return s.get(Sach.class,id);
    }
    public void delete(Sach sa){
        try {
            s.getTransaction().begin();
            s.delete(sa);
            s.getTransaction().commit();
        }catch (Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void add(Sach sa){
        try {
            s.getTransaction().begin();
            s.persist(sa);
            s.getTransaction().commit();
        }catch (Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(Sach sa){
        try {
            s.getTransaction().begin();
            s.merge(sa);
            s.getTransaction().commit();
        }catch (Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public List<Sach> phanTrangHql(Integer pageNo, Integer pageSize ) {
        int offset = pageNo * pageSize;
        String hql = "SELECT c from Sach c ORDER BY c.id ";
        Query query = s.createQuery(hql);
        query.setFirstResult(offset);
        query.setMaxResults(pageSize);
        return query.getResultList();
    }
    public static void main(String[] args) {
        System.out.println(new SachRepository().getCB());
    }
}
