package entity;

import jakarta.persistence.*;
import lombok.*;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@ToString
@Builder
@Table(name = "category")
@Entity
public class Category {
    /**
     *
     */
    @Id // mapping khoa chinh
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long cateID;
    @Column(name = "category_name")
    private String cateName;
    @Column(name = "category_code")
    private String cateCode;

}
