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
import lombok.ToString;

import java.util.Date;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
@Entity
@ToString
@Table(name = "NguoiDung")
public class NguoiDung {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    @Column(name = "ten")
    private String ten;

    @Column(name = "matkhau")
    private String matKhau;

    @Column(name = "trangthai")
    private Integer trangThai;

    @Column(name = "gioitinh")
    private String gioiTinh;

    private String email;

    private String anh;

    @Column(name = "ngaysinh")
    private Date ngaySinh;

    private String sdt;

    @Column(name = "vaitro")
    private String vaiTro;

}
