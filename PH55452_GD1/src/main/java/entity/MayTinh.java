package entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@ToString
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "may_tinh")
public class MayTinh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    @Column(name = "id")
    private Integer id;
    @Column(name = "ma")
    private String ma;
    @Column(name = "ten")

    private String ten;
    @Column(name = "gia")

    private Float gia;
    @Column(name = "bo_nho")

    private String boNho;
    @Column(name = "mau_sac")

    private String mauSac;

}
