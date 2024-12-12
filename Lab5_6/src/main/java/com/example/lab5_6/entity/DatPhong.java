package com.example.lab5_6.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;
import java.time.LocalDate;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.Nationalized;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "dat_phong")
public class DatPhong {
    @Id
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "khach_hang_id")
    private Integer khachHangId;

    @Column(name = "loai_phong_id")
    private Integer loaiPhongId;

    @Column(name = "ma", length = 20)
    private String ma;

    @Column(name = "ten", length = 50)
    private String ten;

    @Column(name = "ngay_gio_dat")
    private LocalDate ngayGioDat;

    @Column(name = "so_luong_khach")
    private Integer soLuongKhach;

    @Column(name = "so_luong_phong_dat")
    private Integer soLuongPhongDat;

    @Nationalized
    @Column(name = "ghi_chu", length = 50)
    private String ghiChu;

    @Column(name = "trang_thai")
    private Integer trangThai;

    @Column(name = "ngay_tao")
    private String ngayTao;

    @Column(name = "ngay_chinh_sua")
    private LocalDate ngayChinhSua;

}