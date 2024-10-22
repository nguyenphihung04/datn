package com.example.demo.Repository;

import com.example.demo.Entity.DiemCanBang;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface DiemCanBangRepo extends JpaRepository<DiemCanBang, Integer> {
}
