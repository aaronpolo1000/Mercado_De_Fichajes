package com.example.demo.repo;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.model.*;

public interface UserRepo extends JpaRepository<Jugador,Long> {
	List<Jugador> findByNombre(String nombre);
}