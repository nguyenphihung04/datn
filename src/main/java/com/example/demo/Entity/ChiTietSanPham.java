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
import org.springframework.format.annotation.DateTimeFormat;


import java.util.Date;

@AllArgsConstructor
@Getter
@Setter
@NoArgsConstructor
@Entity
@Table(name = "SanPhamChiTiet")
public class ChiTietSanPham {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Integer id;

    @Column(name = "gia")
    private float gia; // Giá của sản phẩm

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

//                @ManyToOne
//                @JoinColumn(name = "idSanPham")
//                private SanPham sanPham;
//
//                @ManyToOne
//                @JoinColumn(name = "idDiemCanBang")
//                private DiemCanBang diemCanBang;
//
//                @ManyToOne
//                @JoinColumn(name = "idVatLieuTruc")
//                private VatLieuTruc vatLieuTruc;
//
//                @ManyToOne
//                @JoinColumn(name = "idVatLieuKhung")
//                private VatLieuKhung vatLieuKhung;
//
//                @ManyToOne
//                @JoinColumn(name = "idDoCungThan")
//                private DoCungThan doCungThan;
//
//                @ManyToOne
//                @JoinColumn(name = "idChieuDaiTongThe")
//                private ChieuDaiTongThe chieuDaiTongThe;
//
//                @ManyToOne
//                @JoinColumn(name = "idMucCangToiDa")
//                private MucCangToiDa mucCangToiDa;
//
//                @ManyToOne
//                @JoinColumn(name = "idChuViCanVot")
//                private ChuViCanVot chuViCanVot;
//
//                @ManyToOne
//                @JoinColumn(name = "idMauSac")
//                private MauSac mauSac;

}
