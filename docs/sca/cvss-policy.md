# Política CVSS - SecureBank API

## Objetivo

Establecer criterios para la toma de decisiones frente a vulnerabilidades detectadas en dependencias y componentes de software.

---

## Vulnerabilidades Críticas

CVSS >= 9.0

Acción:

- Bloquear automáticamente el pipeline.
- Corregir antes de desplegar.
- Generar incidente de seguridad.

---

## Vulnerabilidades Altas

CVSS 7.0 - 8.9

Acción:

- Requiere revisión manual.
- Debe existir aprobación antes del despliegue.

---

## Vulnerabilidades Medias y Bajas

CVSS < 7.0

Acción:

- Registrar en backlog.
- Corregir según prioridad.
- El pipeline puede continuar.
