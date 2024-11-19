package entity;


import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Table(name = "giang_vien")
@Entity
public class GiangVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long gvID;
    @Column(name = "ma")
    private String gvMa;
    @Column(name = "ten")
    private String gvTen;
    @Column(name = "tuoi")
    private Long gvTuoi;
    @Column(name = "gioi_tinh")
    private Boolean gvGioiTinh;
    @Column(name = "dia_chi")
    private String gvDiaChi;
}
