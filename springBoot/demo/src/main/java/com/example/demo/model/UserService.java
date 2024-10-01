package com.example.demo.model;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
import com.example.demo.repo.*;

@Service
public class UserService {

    @Autowired
    private UserRepo userRepository;
    
    public Jugador buscarPorNombre(String nombre) {
        return userRepository.findByNombre(nombre).get(0);
    }

    public void deleteUser(Long id) {
        userRepository.deleteById(id);
    }
}