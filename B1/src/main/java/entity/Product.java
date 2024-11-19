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
@Table(name = "product")
public class Product {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @ManyToOne
    @JoinColumn(name = "category_id",referencedColumnName = "id")
    private Category cate;

    @Column(name = "product_code")
    private  String productCode;
    @Column(name = "product_name")
    private  String productName;
    @Column(name = "description")
    private  String des;
    @Column(name = "price")
    private Float price;
}
