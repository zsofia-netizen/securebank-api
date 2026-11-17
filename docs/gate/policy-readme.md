# Policy as Code

## ¿Qué es?

Policy as Code consiste en expresar reglas de seguridad mediante archivos versionados y evaluados automáticamente por una herramienta.

## Herramienta

Open Policy Agent (OPA).

## Lenguaje

Rego.

## Beneficios

- Automatización.
- Auditabilidad.
- Versionamiento.
- Decisiones consistentes.

## Aplicación en SecureBank

La política utiliza resultados provenientes de:

- Secret Scan
- SAST
- SCA
- DAST

para decidir automáticamente si un build puede continuar hacia producción.
