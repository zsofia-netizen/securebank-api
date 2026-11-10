# Gestión de Secretos - SecureBank API

## Objetivo

Definir las prácticas utilizadas para proteger credenciales, tokens y otros datos sensibles dentro del proyecto SecureBank API.

---

# Inventario de Secretos

| Secreto | Uso |
|----------|----------|
| JWT_SECRET | Firma de tokens JWT |
| DB_PASSWORD | Acceso a base de datos |
| GITHUB_TOKEN | Acceso a GitHub Actions |
| API_KEY | Integración con servicios externos |

---

# Almacenamiento Seguro

Los secretos no deben almacenarse en el código fuente.

Se utilizarán:

- GitHub Secrets
- Variables protegidas del entorno
- Secret Managers especializados cuando corresponda

---

# Política de Rotación

## Secretos Críticos

Rotación cada 90 días.

Ejemplos:

- JWT_SECRET
- DB_PASSWORD

## Secretos de Riesgo Medio

Rotación cada 180 días.

Ejemplos:

- API Keys

---

# Detección de Secretos

La detección automática se realiza mediante:

- Gitleaks
- Revisiones de Pull Request

---

# Procedimiento ante Incidentes

1. Identificar el secreto comprometido.
2. Revocar inmediatamente el secreto.
3. Generar uno nuevo.
4. Actualizar la configuración de la aplicación.
5. Revisar logs y actividades asociadas.
6. Documentar el incidente.

---

# Beneficios

- Reducción de exposición de credenciales.
- Menor riesgo de compromiso de cuentas.

---

# Integración con el Pipeline DevSecOps

La gestión de secretos forma parte del pipeline CI/CD de SecureBank API.

## Controles Implementados

- GitHub Secrets para almacenar credenciales de forma segura.
- Escaneo preventivo mediante Gitleaks.
- Revisiones de Pull Request.
- Validaciones automáticas antes de integrar cambios.

## Flujo

Push / Pull Request
↓
Pruebas automáticas (Pytest)
↓
Análisis de dependencias (pip-audit)
↓
Revisión de dependencias (Safety)
↓
Escaneo de secretos (Gitleaks)
↓
Análisis SAST (Semgrep)
↓
Resultado del Pipeline

## Objetivo

Detectar y prevenir la exposición accidental de credenciales, tokens y claves sensibles durante el desarrollo.
- Cumplimiento de buenas prácticas DevSecOps.

---

# Alternativas Elegidas

## Desarrollo Local

Variables de entorno (.env excluido mediante .gitignore).

## Pipeline CI/CD

GitHub Secrets para almacenar credenciales cifradas.

## Escalamiento Futuro

HashiCorp Vault para gestión centralizada de secretos.

OIDC para autenticación mediante credenciales temporales.

## Justificación

Los secretos permanecen fuera del código fuente y se entregan únicamente cuando son requeridos por la aplicación o el pipeline.




