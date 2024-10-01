package com.example.demo.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import com.example.demo.model.*;

import java.util.List;

@RestController
@RequestMapping("/api/users")
@CrossOrigin(origins = "http://localhost")
public class UserController {

    @Autowired
    private UserService userService;

    @GetMapping("/{nombre}")
    public Jugador buscarPorNombre(@PathVariable String nombre) {
        return userService.buscarPorNombre(nombre);
    }
}