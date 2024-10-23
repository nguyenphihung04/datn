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

@Entity
@Table(name = "GioHang")
@AllArgsConstructor
@NoArgsConstructor
@Getter
@Setter
public class GioHang {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name="id")
    private Integer id;

    @ManyToOne
    @JoinColumn(name = "idnguoidung")
    private NguoiDung nguoiDung;

    @ManyToOne
    @JoinColumn(name = "idspct")
    private ChiTietSanPham chiTietSanPham;

    @Column(name="trangthai")
    private Integer trangThai;

    @Column(name="ten")
    private String ten;
}
