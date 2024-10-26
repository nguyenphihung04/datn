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
@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
@Table(name = "SanPhamChiTiet")
public class ChiTietSanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "gia")
    private BigDecimal gia; // Giá của sản phẩm

    @Column(name = "soluongton")
    private int soLuongTon; // Số lượng tồn

    @Column(name = "ngaysua")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngaySua; // Ngày sửa

    @Column(name = "ngaytao")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private Date ngayTao; // Ngày tạo

    @Column(name = "trangthai")
    private int trangThai; // Trạng thái sản phẩm

    @ManyToOne
    @JoinColumn(name = "idSanPham", referencedColumnName = "id")
    private SanPham sanPham;

    @ManyToOne
    @JoinColumn(name = "idDiemCanBang", referencedColumnName = "id")
    private DiemCanBang diemCanBang;

    @ManyToOne
    @JoinColumn(name = "idVatLieuTruc", referencedColumnName = "id")
    private VatLieuTruc vatLieuTruc;

    @ManyToOne
    @JoinColumn(name = "idVatLieuKhung", referencedColumnName = "id")
    private VatLieuKhung vatLieuKhung;

    @ManyToOne
    @JoinColumn(name = "idDoCungThan", referencedColumnName = "id")
    private DoCungThan doCungThan;

    @ManyToOne
    @JoinColumn(name = "idChieuDaiTongThe", referencedColumnName = "id")
    private ChieuDaiTongThe chieuDaiTongThe;

    @ManyToOne
    @JoinColumn(name = "idMucCangToiDa", referencedColumnName = "id")
    private MucCangToiDa mucCangToiDa;

    @ManyToOne
    @JoinColumn(name = "idChuViCanVot", referencedColumnName = "id")
    private ChuViCanVot chuViCanVot;

    @ManyToOne
    @JoinColumn(name = "idMauSac", referencedColumnName = "id")
    private MauSac mauSac;

}
