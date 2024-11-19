package entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@ToString
@Builder
@NoArgsConstructor
@AllArgsConstructor
@Entity
@Table(name = "sinh_vien")
public class SinhVien {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id ;
    @Column(name = "ma")
    private String ma;
    @Column(name = "ten")
    private String ten ;
    @Column(name = "tuoi")
    private Long tuoi ;
    @Column(name = "dia_chi")
    private String diaChi ;
    @Column(name = "gioi_tinh")
    private Boolean gioiTinh;
    @ManyToOne
    @JoinColumn(name = "lop_id",referencedColumnName = "id")
    private Lop lopId;
//    @Column(name = "lop_id")
//    private Integer lopId;
}
