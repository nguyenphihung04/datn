package com.example.demo.Repository;

import com.example.demo.Entity.NguoiDung;
import org.springframework.data.jpa.repository.JpaRepository;

public interface NguoiDungRepo extends JpaRepository<NguoiDung, Integer> {
}
