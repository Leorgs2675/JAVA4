package entity;


import jakarta.persistence.*;
import lombok.*;


@Setter
@Getter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Table(name = "giang_vien")
@Entity
public class GiangVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long idGV;
    @Column(name = "mssv")
    private String maGV;
    @Column(name = "ten")
    private String tenGV;
    @Column(name = "tuoi")
    private Long tuoi;
    @Column(name = "gioi_tinh")
    private Boolean gioiTinh;
    @Column(name = "que_quan")
    private String que;

    public GiangVien(Long idGV, String maGV, String tenGV, Long tuoi, String que) {
        this.idGV = idGV;
        this.maGV = maGV;
        this.tenGV = tenGV;
        this.tuoi = tuoi;
        this.que = que;
    }
}
