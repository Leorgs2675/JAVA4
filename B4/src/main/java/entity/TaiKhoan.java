package entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Table(name = "tai_khoan")
@Entity
public class TaiKhoan {
    @Id
    @Column(name = "username")
    private String userName;
    @Column(name = "password")
    private String passWord;
}
