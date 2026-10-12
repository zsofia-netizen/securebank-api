# Reporte SAST Antes de la Corrección

## Resumen

Se realizó un análisis estático de seguridad (SAST) sobre SecureBank API para identificar vulnerabilidades presentes en el código fuente.

## Hallazgos Detectados

### F01 - SQL Injection

Severidad: Critical

Descripción:
Las consultas SQL permiten la concatenación directa de entradas de usuario.

Impacto:
Posibilidad de lectura, modificación o eliminación de información de la base de datos.

---

### F02 - Command Injection

Severidad: Critical

Descripción:
Ejecución de comandos del sistema operativo utilizando entradas proporcionadas por el usuario.

Impacto:
Ejecución arbitraria de comandos en el servidor.

---

### F03 - Cross-Site Scripting (XSS)

Severidad: High

Descripción:
Datos controlados por el usuario son mostrados sin validación o escape adecuado.

Impacto:
Ejecución de scripts maliciosos en el navegador.

---

### F04 - Uso de MD5 para contraseñas

Severidad: High

Descripción:
Las contraseñas son almacenadas utilizando MD5.

Impacto:
Posibilidad de recuperación de contraseñas mediante ataques de fuerza bruta.

---

### F05 - Uso inseguro de eval()

Severidad: Critical

Descripción:
La aplicación utiliza la función eval() sobre datos externos.

Impacto:
Ejecución arbitraria de código.

---

## Resultado

Vulnerabilidades encontradas: 5

Críticas: 3

Altas: 2
