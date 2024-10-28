package com.example.demo.model;
import jakarta.persistence.*;

@Entity
@Table(name = "jugadores")
public class Jugador {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String nombre;
    private String posicion;
    private int edad;
    private String nacionalidad;
    private double valor_mercado;
    private int contrato_hasta;
    private int club_id;
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getNombre() {
		return nombre;
	}
	public void setNombre(String nombre) {
		this.nombre = nombre;
	}
	public String getPosicion() {
		return posicion;
	}
	public void setPosicion(String posicion) {
		this.posicion = posicion;
	}
	public int getEdad() {
		return edad;
	}
	public void setEdad(int edad) {
		this.edad = edad;
	}
	public String getNacionalidad() {
		return nacionalidad;
	}
	public void setNacionalidad(String nacionalidad) {
		this.nacionalidad = nacionalidad;
	}
	public double getValorMercado() {
		return valor_mercado;
	}
	public void setValorMercado(double valorMercado) {
		this.valor_mercado = valorMercado;
	}
	public int getContratoHasta() {
		return contrato_hasta;
	}
	public void setContratoHasta(int contratoHasta) {
		this.contrato_hasta = contratoHasta;
	}
	public int getClubId() {
		return club_id;
	}
	public void setClubId(int clubId) {
		this.club_id = clubId;
	}
    

    // Getters and setters
    
    
}