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
import org.springframework.format.annotation.DateTimeFormat;

import java.math.BigDecimal;
import java.util.Date;

@Entity
@Table(name = "HoaDon")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class HoaDon {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "tongtien")
    private BigDecimal tongTien;

    @Column(name = "tennguoinhan")
    private String tenNguoiNhan;

    @Column(name = "ngaynhan")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngayNhan;

    @Column(name = "ngaytao")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngayTao;

    @Column(name = "ngaysua")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaySua;

    @Column(name = "trangthai")
    private int trangThai;

    @Column(name = "tienship")
    private BigDecimal tienShip;

    @Column(name = "ngayship")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngayShip;

    @Column(name = "ngaythanhtoan")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngayThanhToan;

    @Column(name = "tongtiensaugiam")
    private BigDecimal tongTienSauGiam;

    @Column(name = "hinhthucthanhtoan")
    private String hinhThucThanhToan;

    @Column(name = "phuongthucthanhtoan")
    private String phuongThucThanhToan;

    @ManyToOne
    @JoinColumn(name = "idvoucher", referencedColumnName = "id")
    private Voucher voucher;

    @ManyToOne
    @JoinColumn(name = "idnguoidung", referencedColumnName = "id")
    private NguoiDung nguoiDung;
}
