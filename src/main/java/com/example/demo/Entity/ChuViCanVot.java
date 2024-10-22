package com.example.demo.Entity;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;


@Entity
@Table(name = "ChuViCanVot")
@Data // Tạo tự động getter, setter, toString, equals, và hashCode
@NoArgsConstructor // Tạo constructor không tham số
@AllArgsConstructor // Tạo constructor có tham số
public class ChuViCanVot {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer id;

    private String chuVi;

    private String moTa;

    private Integer trangThai;
}
