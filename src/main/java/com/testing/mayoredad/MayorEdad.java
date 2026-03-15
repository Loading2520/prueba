package com.testing.mayoredad;

public class MayorEdad {

    public boolean isMayorEdad(int edad) {
        if (edad < 0) {
            throw new IllegalArgumentException("La edad no puede ser negativa.");
        }
        return edad >= 18;
    }
}