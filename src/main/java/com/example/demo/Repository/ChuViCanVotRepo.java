package com.example.demo.Repository;

import com.example.demo.Entity.ChuViCanVot;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface ChuViCanVotRepo extends JpaRepository<ChuViCanVot, Integer> {
}
