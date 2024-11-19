package entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "chiTietSanPham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column()
    private Integer idCTSP;
    @Column()
    private Integer idSanPham;
    @Column()
    private Integer idThuongHieu;
    @Column()
    private Integer idKhoiLuong;
//    @Column()
//    private Integer idDonViTinh;
    @ManyToOne
    @JoinColumn(name = "idDonViTinh",referencedColumnName = "idDonViTinh")
    private DonViTinh idDonViTinh;
    @Column()
    private Integer idXuatXu;
    @Column()
    private Integer idChatLieu;
    @Column()
    private Integer idLoaiSanPham;
    @Column()
    private Integer soLuongTon;
    @Column()
    private Float donGia;
    @Column()
    private String barcode;
    @Column()
    private String ghiChu;
    @Column()
    private String createdAt;
    @Column()
    private Integer createdBy;
    @Column()
    private String updatedAt;
    @Column()
    private Integer updatedBy;
    @Column()
    private Boolean deleted;
}
