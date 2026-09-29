# Repositorio de Riesgos DevSecOps

## R1

Riesgo:
Permisos excesivos en workflow.

STRIDE:
Elevation of Privilege

Impacto:
Escalamiento de privilegios.

Corrección:

permissions:
  contents: read

---

## R2

Riesgo:
Uso de credenciales hardcodeadas.

STRIDE:
Information Disclosure

Impacto:
Exposición de secretos.

Corrección:
GitHub Secrets.

---

## R3

Riesgo:
Dependencias vulnerables.

STRIDE:
Tampering

Impacto:
Ejecución de código vulnerable.

Corrección:
Dependency Scanning.

---

## R4

Riesgo:
Código inseguro.

STRIDE:
Tampering

Impacto:
Vulnerabilidades en producción.

Corrección:
Análisis SAST.

---

## R5

Riesgo:
Falta de pruebas.

STRIDE:
Repudiation

Impacto:
Cambios no validados.

Corrección:
Unit Testing automático.
