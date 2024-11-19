package entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
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
@Table(name = "DonViTinh")
public class DonViTinh {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column()
    private Integer idDonViTinh;
    @Column()
    private String maDonViTinh;
    @Column()
    private String tenDonViTinh;
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
