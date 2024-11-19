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
@Table(name = "TacGia")
public class TacGia {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "MaTacGia")
    private String maTG;
    @Column(name = "TenTacGia")
    private String tenTG;
    @Column(name = "QuocTich")
    private String quocTich;
    @Column(name = "NgaySinh")
    private String ngaySinh;
    @Column(name = "GhiChu")
    private String ghiChu;
}
