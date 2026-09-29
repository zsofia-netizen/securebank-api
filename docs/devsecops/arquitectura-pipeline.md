# Arquitectura del Pipeline DevSecOps

## Objetivo

Automatizar la validación del código y aplicar controles de seguridad durante el ciclo de integración continua.

## Flujo

Developer
↓
GitHub Repository
↓
GitHub Actions
↓
Build
↓
Unit Tests
↓
Security Checks
↓
Artifact

## Controles de Seguridad

### Build

- Validación de dependencias.

### Test

- Ejecución de pruebas automáticas.

### Security Check

- Análisis SAST.
- Escaneo de secretos.
- Revisión de dependencias vulnerables.

### Artifact

- Generación de artefacto validado.
