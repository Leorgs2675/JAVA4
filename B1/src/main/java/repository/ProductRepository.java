package repository;

import entity.Category;
import entity.Product;
import org.hibernate.Session;
import utils.HibernateUtils;

import java.util.List;

public class ProductRepository {
    private Session s;

    public ProductRepository() {
        s = HibernateUtils.getFACTORY().openSession();
    }
    public List<Product> getAll() {
        return s.createQuery("FROM Product ").list();
    }

    public static void main(String[] args) {
        System.out.println(new ProductRepository().getAll());
    }
}
