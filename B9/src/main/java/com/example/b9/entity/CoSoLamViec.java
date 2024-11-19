package com.example.b9.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;
import org.hibernate.annotations.Nationalized;

@Getter
@Setter
@Builder
@ToString
@AllArgsConstructor
@NoArgsConstructor
@Entity
@Table(name = "co_so_lam_viec")
public class CoSoLamViec {
    @Id
    @Column(name = "id", nullable = false)
    private Long id;

    @Column(name = "ma", length = 50)
    private String ma;

    @Nationalized
    @Column(name = "dia_chi", length = 100)
    private String diaChi;

}