package entity;

import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@Builder
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Entity
@Table(name = "ChiTietSP")
public class ChiTietSp {
    @Id
    @Column(name = "Id")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "IdSP")
    private Integer idSp;

    @Column(name = "IdNsx")
    private Integer idNsx;

    @Column(name = "IdMauSac")
    private Integer idMauSac;

    @Column(name = "IdDongSP")
    private Integer idDongSp;

    @Column(name = "NamBH")
    private Integer namBh;

    @Column(name = "MoTa")
    private String moTa;

    @Column(name = "SoLuongTon")
    private Integer soLuongTon;

    @Column(name = "GiaNhap")
    private Float giaNhap;

    @Column(name = "GiaBan")
    private Float giaBan;

}
