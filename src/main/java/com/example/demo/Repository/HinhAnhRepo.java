package com.example.demo.Repository;

import com.example.demo.Entity.HinhAnh;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface HinhAnhRepo extends JpaRepository<HinhAnh, Integer> {
}
