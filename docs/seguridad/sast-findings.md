# Hallazgos SAST - SecureBank API

## F01

Vulnerabilidad:
SQL Injection

Categoría OWASP:
A03 - Injection

Severidad:
Critical

Corrección:
Uso de consultas parametrizadas.

---

## F02

Vulnerabilidad:
Command Injection

Categoría OWASP:
A03 - Injection

Severidad:
Critical

Corrección:
Uso de subprocess.run() sin shell=True.

---

## F03

Vulnerabilidad:
Cross-Site Scripting (XSS)

Categoría OWASP:
A03 - Injection

Severidad:
High

Corrección:
Escape y sanitización de salida.

---

## F04

Vulnerabilidad:
Hash MD5 para contraseñas

Categoría OWASP:
A02 - Cryptographic Failures

Severidad:
High

Corrección:
bcrypt con salt aleatorio.

---

## F05

Vulnerabilidad:
eval() sobre entrada de usuario

Categoría OWASP:
A03 - Security Misconfiguration / Dangerous Functions

Severidad:
Critical

Corrección:
Eliminar eval() y utilizar parser seguro.
