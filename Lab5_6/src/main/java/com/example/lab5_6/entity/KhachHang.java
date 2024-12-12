package com.example.lab5_6.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import java.time.LocalDate;
import lombok.Getter;
import lombok.Setter;
import org.hibernate.annotations.Nationalized;

@Getter
@Setter
@Entity
@Table(name = "khach_hang")
public class KhachHang {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;
//    @ManyToOne
//    @JoinColumn(name = "id",referencedColumnName = "khachHangId")
//    private DatPhong id;

    @Column(name = "ma", length = 20)
    private String ma;

    @Nationalized
    @Column(name = "ho", length = 20)
    private String ho;

    @Nationalized
    @Column(name = "ten_dem", length = 20)
    private String tenDem;

    @Nationalized
    @Column(name = "ten", length = 20)
    private String ten;

    @Column(name = "gioi_tinh")
    private Boolean gioiTinh;

    @Column(name = "ngay_sinh")
    private LocalDate ngaySinh;

    @Column(name = "email", length = 50)
    private String email;

    @Column(name = "sdt", length = 11)
    private String sdt;

    @Nationalized
    @Column(name = "dia_chi", length = 100)
    private String diaChi;

    @Nationalized
    @Column(name = "quoc_tich", length = 100)
    private String quocTich;

    @Column(name = "trang_thai")
    private Integer trangThai;

    @Column(name = "ngay_tao")
    private LocalDate ngayTao;

    @Column(name = "ngay_chinh_sua")
    private LocalDate ngayChinhSua;

}