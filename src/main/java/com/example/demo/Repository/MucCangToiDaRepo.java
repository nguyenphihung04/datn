package com.example.demo.Repository;

import com.example.demo.Entity.MucCangToiDa;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface MucCangToiDaRepo extends JpaRepository<MucCangToiDa, Integer> {
}
