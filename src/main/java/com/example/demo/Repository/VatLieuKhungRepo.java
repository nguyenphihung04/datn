package com.example.demo.Repository;

import com.example.demo.Entity.VatLieuKhung;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface VatLieuKhungRepo extends JpaRepository<VatLieuKhung, Integer> {

}
