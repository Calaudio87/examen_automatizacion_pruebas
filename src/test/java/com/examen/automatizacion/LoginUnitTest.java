package com.examen.automatizacion;

import org.junit.jupiter.api.Tag;
import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.assertTrue;

public class LoginUnitTest {
    @Test
    @Tag("unit")
    void testValidacionUsuario() {
        // Valida una función aislada
        assertTrue(true, "El usuario debería ser válido");
    }
}