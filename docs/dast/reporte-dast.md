# Reporte DAST - SecureBank API

## Herramienta Utilizada

OWASP ZAP Baseline Scan

## Objetivo

Evaluar dinámicamente la aplicación SecureBank API en ejecución para identificar vulnerabilidades que no pueden detectarse mediante análisis estático.

## Hallazgos

| Severidad | Hallazgo | Descripción |
|------------|------------|------------|
| Medium | Headers de seguridad ausentes | Falta de Content-Security-Policy y HSTS |
| Medium | Cookies inseguras | Ausencia de HttpOnly, Secure y SameSite |
| Medium | Configuración insegura | Información excesiva en respuestas |
| High | BOLA | Acceso a recursos de otros usuarios mediante modificación del ID |

## Evidencia

Escaneo realizado mediante OWASP ZAP Baseline.
