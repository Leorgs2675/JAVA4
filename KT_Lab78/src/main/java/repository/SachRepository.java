package repository;

import entity.Nxb;
import entity.Sach;
import java.util.List;
import org.hibernate.Hibernate;
import org.hibernate.Session;
import org.hibernate.query.Query;
import utils.HibernateUtils;

public class SachRepository {
    private Session session;
    public SachRepository() {
        session = HibernateUtils.getFACTORY().openSession();
    }
    public List<Sach> getSach() {
        return session.createQuery("FROM Sach ").list();
    }
     public List<Nxb> getcbb() {
        return session.createQuery("FROM Nxb ").list();
    }

    public Sach getSachById(int id) {
        return session.get(Sach.class, id);
    }
    public List<Sach> phanTranghql(Integer pageNo,Integer pageSize) {
        int offset = pageNo*pageSize;
        String hql = "SELECT c FROM Sach c ORDER BY c.id";
        Query query = session.createQuery(hql);
        query.setFirstResult(offset);
        query.setMaxResults(pageSize);
        return query.getResultList();
    }
    public long getSachCount() {
        Session session = HibernateUtils.getFACTORY().openSession();
        session.beginTransaction();
        String hql = "select count(*) from Sach";
        Query query = session.createQuery(hql);
        Long count = (Long) query.uniqueResult();
        session.getTransaction().commit();
        return count;
    }
    public void update(Sach sach) {
       try {
           session.getTransaction().begin();
           session.merge(sach);
           session.getTransaction().commit();
       }catch (Exception e) {
           session.getTransaction().rollback();
           e.printStackTrace();
       }
    }
    public void delete(Sach sach) {
       try {
           session.getTransaction().begin();
           session.delete(sach);
           session.getTransaction().commit();
       }catch (Exception e) {
           session.getTransaction().rollback();
           e.printStackTrace();
       }
    }

    public static void main(String[] args) {
        System.out.println(new SachRepository().getcbb());
    }
}
