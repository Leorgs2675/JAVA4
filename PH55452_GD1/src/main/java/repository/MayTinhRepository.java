package repository;

import entity.MayTinh;
import org.hibernate.Session;
import org.hibernate.query.Query;
import utils.HibernateUtils;

import java.util.List;

public class MayTinhRepository {
    private Session s;
    public MayTinhRepository(){
        s = HibernateUtils.getFACTORY().openSession();
    }
    public List<MayTinh> getAll(){
        return s.createQuery("FROM MayTinh ").list();
    }
    public List<MayTinh> phanTrang(Integer pageNo,Integer pageSize){
        int offset = pageNo * pageSize;
        String hql = "SELECT m FROM MayTinh m ORDER BY m.id ";
        Query query = s.createQuery(hql);
        query.setFirstResult(offset);
        query.setMaxResults(pageSize);
        return query.getResultList();
    }

    public MayTinh getOne(Integer ma){
        return s.get(MayTinh.class,ma);
    }
    public void add(MayTinh m){
        try {
            s.getTransaction().begin();
            s.persist(m);
            s.getTransaction().commit();
        }catch (Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(MayTinh m){
            try {
                s.getTransaction().begin();
                s.delete(m);
                s.getTransaction().commit();
            }catch (Exception e){
                s.getTransaction().rollback();
                e.printStackTrace();
            }
        }

    public static void main(String[] args) {
        System.out.println(new MayTinhRepository().phanTrang(0,5));
    }
}
