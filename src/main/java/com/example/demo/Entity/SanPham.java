package com.example.demo.Entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

import java.math.BigDecimal;


@Entity
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
@Table(name = "SanPham")
public class SanPham {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "ma")
    private String ma;

    @Column(name = "ten")
    private String ten;

    @Column(name = "thongtin")
    private String thongTin;

    @Column(name = "gia")
    private BigDecimal gia;

    @Column(name = "trangthai")
    private Integer trangThai;

    @Column(name = "soluongdaban")
    private Integer soLuongDB;

    @Column(name = "anh")
    private String anh;

    @ManyToOne
    @JoinColumn(name = "idloai", referencedColumnName = "id")
    private Loai loai;
}
