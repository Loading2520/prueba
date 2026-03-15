package com.testing.mayoredad;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;

public class MayorEdadTest {

    private final MayorEdad mayorEdad = new MayorEdad();

    // ── CLASE 1: Edad inválida (negativa) ──────────────────────────────
    // Valor límite superior de la clase inválida: -1
    @Test
    public void testEdadNegativaLanzaExcepcion() {
        assertThrows(IllegalArgumentException.class, () -> {
            mayorEdad.isMayorEdad(-1);
        }, "Una edad de -1 debería lanzar IllegalArgumentException.");
    }

    // ── CLASE 2: Menor de edad (0 a 17) ───────────────────────────────
    // Valor límite inferior de la clase 2: 0
    @Test
    public void testEdadCeroEsMenorDeEdad() {
        assertFalse(mayorEdad.isMayorEdad(0),
            "Una edad de 0 debería devolver false (menor de edad).");
    }

    // Valor límite superior de la clase 2: 17
    @Test
    public void testEdad17EsMenorDeEdad() {
        assertFalse(mayorEdad.isMayorEdad(17),
            "Una edad de 17 debería devolver false (menor de edad).");
    }

    // ── CLASE 3: Mayor de edad (18 en adelante) ────────────────────────
    // Valor límite inferior de la clase 3: 18
    @Test
    public void testEdad18EsMayorDeEdad() {
        assertTrue(mayorEdad.isMayorEdad(18),
            "Una edad de 18 debería devolver true (mayor de edad).");
    }

    // Valor justo dentro de la clase 3: 19
    @Test
    public void testEdad19EsMayorDeEdad() {
        assertTrue(mayorEdad.isMayorEdad(19),
            "Una edad de 19 debería devolver true (mayor de edad).");
    }

    // Valor representativo alto de la clase 3: 100
    @Test
    public void testEdad100EsMayorDeEdad() {
        assertTrue(mayorEdad.isMayorEdad(100),
            "Una edad de 100 debería devolver true (mayor de edad).");
    }
}