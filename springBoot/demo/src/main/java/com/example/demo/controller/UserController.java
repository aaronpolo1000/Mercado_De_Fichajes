package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;
import com.example.demo.model.*;
import com.example.demo.repo.UserRepo;

import java.util.List;
import java.util.Optional;

@RestController
@RequestMapping("/api/users")
@CrossOrigin(origins = "http://localhost")
public class UserController {

    @Autowired
    private UserService userService;
    @Autowired
    private UserRepo userRepo;
    @GetMapping("/{nombre}")
    public Jugador buscarPorNombre(@PathVariable String nombre) {
        return userService.buscarPorNombre(nombre);
    }
    @PutMapping("/{id}")
    public void actualizarJugador(@PathVariable Long id, @RequestBody Jugador jugadorActualizado) {
        userService.actualizarJugador(id, jugadorActualizado);
    }
    @DeleteMapping("/{id}")
    public void eliminarJugador(@PathVariable Long id) {
        userService.eliminarJugador(id);
    }
    @PostMapping
    public ResponseEntity<String> crearUsuario(
            @RequestParam String nombre,
            @RequestParam String posicion,
            @RequestParam int edad,
            @RequestParam String nacionalidad,
            @RequestParam double valorMercado,
            @RequestParam int contratoHasta,
            @RequestParam int clubId
    ) {
        Jugador jugador = new Jugador();
        jugador.setNombre(nombre);
        jugador.setPosicion(posicion);
        jugador.setEdad(edad);
        jugador.setNacionalidad(nacionalidad);
        jugador.setValorMercado(valorMercado);
        jugador.setContratoHasta(contratoHasta);
        jugador.setClubId(clubId);

        userRepo.save(jugador); // Guarda el jugador en la base de datos
        return ResponseEntity.ok("Usuario creado con éxito");
    }
    }
