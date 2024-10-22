package com.example.demo.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;

@Entity
@Table(name = "ChieuDaiTongThe")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class ChieuDaiTongThe {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "chieudai")
    private BigDecimal chieuDai;

    @Column(name = "mota")
    private String moTa;

    @Column(name = "trangthai")
    private int trangThai;

}
