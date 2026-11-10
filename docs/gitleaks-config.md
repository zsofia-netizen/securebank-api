# Gitleaks

## Objetivo

Detectar credenciales expuestas dentro del repositorio.

## Información Analizada

- Contraseñas
- Tokens
- API Keys
- Secretos de aplicación

## Beneficio

Permite detectar de forma temprana información sensible antes de que llegue a producción.

## Integración

Puede ejecutarse manualmente o integrarse dentro del pipeline CI/CD.


## Integración en SecureBank API

La herramienta Gitleaks se incorpora como parte del pipeline DevSecOps para detectar:

- Contraseñas expuestas.
- Tokens de acceso.
- API Keys.
- Credenciales incluidas accidentalmente en commits.

Ante la detección de secretos expuestos, el pipeline debe detener la ejecución y solicitar corrección antes de continuar.
