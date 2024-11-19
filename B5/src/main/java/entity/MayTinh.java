package entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Entity
@Table(name = "may_tinh")
public class MayTinh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ma")
    private Integer ma;
    @Column(name = "ten")
    private String ten;
    @Column(name = "gia")
    private Float gia;
    @Column(name = "bo_nho")
    private String boNho;
    @Column(name = "mau_sac")
    private String mauSac;
    @Column(name = "hang")
    private String hang;
    @Column(name = "mieu_ta")
    private String mieuTa;
}
