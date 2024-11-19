package repository;


import entity.Category;
import jakarta.persistence.Query;
import org.hibernate.Session;
import utils.HibernateUtils;


import java.util.List;

public class CategoryRepository {
    private Session s;

    public CategoryRepository() {
        s = HibernateUtils.getFACTORY().openSession();
    }

    //     select => read
    public List<Category> getAll() {
        return s.createQuery("FROM Category").list();
    }
    public List<Category> timKiem(String name ) {
            String hql = "SELECT cate FROM Category cate WHERE cateName LIKE ?1";
            Query query = s.createQuery(hql);
            query.setParameter(1,"%"+name+"%");
        return query.getResultList();
    }
    public List<Category> phanTrang(Integer pageNo, Integer pageSize ) {
        Integer offset = pageNo * pageSize;
        String sql = "SELECT * from category\n" +
                "ORDER BY id \n" +
                "OFFSET :offset ROWS \n" +
                "FETCH NEXT :pageSize ROWS ONLY";
        Query query = s.createNativeQuery(sql,Category.class);
        query.setParameter("offset",offset);
        query.setParameter("pageSize",pageSize);
        return query.getResultList();
    }
    public List<Category> phanTrangHql(Integer pageNo, Integer pageSize ) {
            int offset = pageNo * pageSize;
            String hql = "SELECT c from Category c ORDER BY c.cateID ";
            Query query = s.createQuery(hql);
            query.setFirstResult(offset);
            query.setMaxResults(pageSize);
            return query.getResultList();
    }

    public Category getOne(Long id) {
        return s.get(Category.class, id);
    }
    public Category tim1(Long id) {
        String hql="SELECT cate FROM Category cate WHERE cateID = ?1 ";
        Query query = s.createQuery(hql);
        query.setParameter(1,id);
        Category cate = (Category) query.getSingleResult();

        return cate;
    }

    public void add(Category c) {
        try {
            s.getTransaction().begin();
            s.persist(c);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(Category c) {
        try {
            s.getTransaction().begin();
            s.merge(c);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(Category id) {
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
//        System.out.println(new CategoryRepository().phanTrang(24,4));
        System.out.println(new CategoryRepository().phanTrangHql(1,4));
//        System.out.println(new CategoryRepository().getAll());
//        Long id = 4L;
//        new CategoryRepository().delete(id);
    }

}
