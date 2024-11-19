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
@Table(name = "Sach")
public class Sach {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "ID")
    private Integer id;
    @Column(name = "MaSach")
    private String maSach;
    @Column(name = "TenSach")
    private String tenSach;
    @Column(name = "NamXuatBan")
    private Integer nam;
    @Column(name = "TheLoai")
    private String theLoai;
//    @ManyToOne
//    @JoinColumn(name = "TacGiaID",referencedColumnName = "ID")
//    private TacGia tg;
    @Column(name = "TacGiaID")
    private Integer tgId;
}
