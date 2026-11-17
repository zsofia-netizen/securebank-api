# Security Quality Gate

## Objetivo

Tomar una decisión automática dentro del pipeline CI/CD utilizando los resultados de seguridad generados por Secret Scan, SAST, SCA y DAST.

## Criterios

### Critical Vulnerabilities

Debe ser igual a 0.

### Secrets

Debe ser igual a 0.

### High CVEs

Máximo 2.

### Test Coverage

Mínimo 80%.

## Resultado

Si alguna condición falla:

BLOCK

Si todas las condiciones se cumplen:

DEPLOY
