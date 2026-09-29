# Ciclo DevSecOps - SecureBank API

## Introducción

DevSecOps integra prácticas de seguridad a lo largo de todo el ciclo de vida del desarrollo de software. El objetivo es incorporar controles de seguridad desde las primeras etapas del proyecto y automatizarlos dentro del pipeline de desarrollo.

---

# Plan

## Objetivo

Definir requisitos, funcionalidades y riesgos del sistema.

## Control de Seguridad

Threat Modeling y análisis de riesgos.

## Herramienta

OWASP Threat Dragon.

## Responsable

Arquitecto de Software y Product Owner.

---

# Code

## Objetivo

Desarrollar el código fuente de la aplicación.

## Control de Seguridad

Análisis estático de código (SAST) y revisión de secretos.

## Herramienta

Semgrep y Gitleaks.

## Responsable

Equipo de Desarrollo.

---

# Build

## Objetivo

Construir la aplicación y preparar artefactos.

## Control de Seguridad

Análisis de dependencias vulnerables (SCA).

## Herramienta

Trivy.

## Responsable

Desarrollador y DevOps Engineer.

---

# Test

## Objetivo

Verificar el correcto funcionamiento de la aplicación.

## Control de Seguridad

Pruebas funcionales y validaciones de seguridad.

## Herramienta

Pytest y OWASP ZAP.

## Responsable

QA Engineer.

---

# Release

## Objetivo

Preparar una versión estable para despliegue.

## Control de Seguridad

Verificación y firma de artefactos.

## Herramienta

Cosign.

## Responsable

DevOps Engineer.

---

# Deploy

## Objetivo

Desplegar la aplicación en el entorno objetivo.

## Control de Seguridad

Validación de infraestructura y configuración segura.

## Herramienta

Checkov.

## Responsable

DevOps Engineer.

---

# Operate

## Objetivo

Mantener la aplicación en funcionamiento.

## Control de Seguridad

Gestión de accesos y secretos.

## Herramienta

HashiCorp Vault.

## Responsable

Administrador de Plataforma.

---

# Monitor

## Objetivo

Detectar incidentes y monitorear la operación.

## Control de Seguridad

Monitoreo continuo, alertas y auditoría.

## Herramienta

Grafana y Wazuh.

## Responsable

Equipo de Operaciones y Seguridad.

---

# Conclusión

La adopción de DevSecOps permite integrar la seguridad en todas las fases del desarrollo de software, reduciendo riesgos y mejorando la calidad y confiabilidad de la aplicación SecureBank API.
