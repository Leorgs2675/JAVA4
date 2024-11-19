package repository;

import entity.Lop;
import entity.SinhVien;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

public class LopRepository {
    private Session s;

    public LopRepository() {
        s = HibernateUtils.getFACTORY().openSession();
    }
    public List<Lop> getAll() {
        return s.createQuery("FROM Lop").list();
    }
    public Lop getOne(Integer id) {
        return s.get(Lop.class, id);
    }
    public static void main(String[] args) {
        System.out.println(new LopRepository().getAll());
    }
}
