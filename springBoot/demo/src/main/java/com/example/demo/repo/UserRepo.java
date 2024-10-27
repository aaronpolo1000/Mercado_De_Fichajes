package com.example.demo.repo;


import org.springframework.data.jpa.repository.JpaRepository;
import com.example.demo.model.Jugador;
import java.util.List;

public interface UserRepo extends JpaRepository<Jugador, Long> {
    List<Jugador> findByNombre(String nombre);
}
