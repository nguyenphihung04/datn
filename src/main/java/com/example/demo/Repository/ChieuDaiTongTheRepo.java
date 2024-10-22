package com.example.demo.Repository;

import com.example.demo.Entity.ChieuDaiTongThe;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChieuDaiTongTheRepo extends JpaRepository<ChieuDaiTongThe, Integer> {
}
