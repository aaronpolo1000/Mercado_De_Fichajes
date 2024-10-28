package com.example.demo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

import com.example.demo.repo.*;

@Service
public class UserService {

    @Autowired
    private UserRepo userRepository;
    
    public Jugador buscarPorNombre(String nombre) {
        return userRepository.findByNombreContaining(nombre).get(0);
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
    public void eliminarJugador(Long id) {
        if (!userRepository.existsById(id)) {
            throw new RuntimeException("Jugador no encontrado");
        }
        userRepository.deleteById(id);
    }
    public void actualizarJugador(Long id, Jugador jugadorActualizado) {
        Jugador jugadorExistente = userRepository.findById(id).orElseThrow(() -> new RuntimeException("Jugador no encontrado"));
        jugadorExistente.setClubId(jugadorActualizado.getClubId());
        userRepository.save(jugadorExistente);
    }
}