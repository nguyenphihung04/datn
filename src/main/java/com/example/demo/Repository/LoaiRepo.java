package com.example.demo.Repository;

import com.example.demo.Entity.Loai;
import org.springframework.data.jpa.repository.JpaRepository;

public interface LoaiRepo extends JpaRepository<Loai,Integer> {
}
