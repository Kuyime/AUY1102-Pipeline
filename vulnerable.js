// archivo_vulnerable.js

function processUserData(input) {
    // FALLO 1: Credenciales Hardcodeadas (Vulnerabilidad Crítica)
    // Sonar detectará patrones de claves de AWS o contraseñas en texto plano.
    const awsAccessKey = "AKIAIOSFODNN7EXAMPLE"; 
    const dbPassword = "admin_password_123"; 

    // FALLO 2: Inyección de Código / Eval (Vulnerabilidad Crítica)
    // El uso de eval() es una de las peores prácticas de seguridad detectadas.
    eval(input); 

    // FALLO 3: Exposición de información (Security Hotspot)
    // Imprimir datos sensibles en consola.
    console.log("Conectando con password: " + dbPassword);

    // FALLO 4: Números pseudo-aleatorios inseguros
    // Math.random() no es seguro para criptografía.
    return Math.random() * 100;
}

module.exports = processUserData;