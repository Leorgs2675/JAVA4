package repository;

import entity.GiangVien;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

public class GiangVienRepository {
    private Session s;
    public GiangVienRepository(){
        s = HibernateUtils.getFACTORY().openSession();
    }
    public List<GiangVien>getAll(){
        return s.createQuery("FROM GiangVien").list();
    }
    public GiangVien getOne(Long id){
        return s.find(GiangVien.class,id);
    }
    public void add(GiangVien g){
        try {
            s.getTransaction().begin();
            s.persist(g);
            s.getTransaction().commit();
        }catch (Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void update(GiangVien g){
        try {
            s.getTransaction().begin();
            s.merge(g);
            s.getTransaction().commit();
        }catch (Exception e){
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }
    public void delete(Long idGV) {
        try {
            s.getTransaction().begin();
            GiangVien g = s.find(GiangVien.class,idGV);
            s.delete(g);
            s.getTransaction().commit();
        } catch (Exception e) {
            s.getTransaction().rollback();
            e.printStackTrace();
        }
    }

    public static void main(String[] args) {
//        System.out.println(new GiangVienRepository().getAll());
        Long id = 1l;
        System.out.println(new GiangVienRepository().getOne(id));
    }
}
