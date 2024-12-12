package utils;


import entity.ChiTietSp;
import entity.ChucVu;
import entity.CuaHang;
import entity.DongSp;
import entity.KhachHang;
import entity.MauSac;
import entity.NhanVien;
import entity.Nsx;
import entity.SanPham;
import org.hibernate.SessionFactory;
import org.hibernate.boot.registry.StandardServiceRegistryBuilder;
import org.hibernate.cfg.Configuration;
import org.hibernate.cfg.Environment;
import org.hibernate.service.ServiceRegistry;

import java.util.Properties;

public class HibernateUtils {
    private static final SessionFactory FACTORY;

    static {
        Configuration conf = new Configuration();

        Properties properties = new Properties();
        properties.put(Environment.DIALECT, "org.hibernate.dialect.SQLServer2016Dialect");
        properties.put(Environment.DRIVER, "com.microsoft.sqlserver.jdbc.SQLServerDriver");
        properties.put(Environment.URL, "jdbc:sqlserver://localhost:1433;databaseName=FINALASS_FPOLYSHOP_FA22_SOF205__SOF2041;encrypt=true;trustServerCertificate=true;");
        properties.put(Environment.USER, "hiepnvph55452");
        properties.put(Environment.PASS, "HIEP260705");
        properties.put(Environment.SHOW_SQL, "true");

        conf.setProperties(properties);
        conf.addAnnotatedClass(SanPham.class);
        conf.addAnnotatedClass(ChiTietSp.class);
        conf.addAnnotatedClass(Nsx.class);
        conf.addAnnotatedClass(NhanVien.class);
        conf.addAnnotatedClass(MauSac.class);
        conf.addAnnotatedClass(KhachHang.class);
        conf.addAnnotatedClass(DongSp.class);
        conf.addAnnotatedClass(CuaHang.class);
        conf.addAnnotatedClass(ChucVu.class);
        ServiceRegistry registry = new StandardServiceRegistryBuilder()
                .applySettings(conf.getProperties()).build();
        FACTORY = conf.buildSessionFactory(registry);

    }

    public static SessionFactory getFACTORY() {
        return FACTORY;
    }

    public static void main(String[] args) {
        System.out.println(getFACTORY());
    }
}
