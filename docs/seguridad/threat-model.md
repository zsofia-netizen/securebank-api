# Threat Model - SecureBank API

| ID | Amenaza | Categoría STRIDE | Riesgo | Mitigación |
|----|----------|----------|----------|----------|
| T01 | Robo de credenciales | Spoofing | Alto | MFA y contraseñas seguras |
| T02 | Falsificación de JWT | Spoofing | Alto | Validación de firma JWT |
| T03 | Manipulación de montos en transferencias | Tampering | Crítico | Validaciones backend |
| T04 | Alteración de parámetros HTTP | Tampering | Alto | Sanitización y validación |
| T05 | Usuario niega una transferencia realizada | Repudiation | Medio | Logs auditables |
| T06 | Eliminación de evidencias de auditoría | Repudiation | Alto | Logs centralizados |
| T07 | Exposición de datos bancarios | Information Disclosure | Alto | TLS y cifrado |
| T08 | Exposición de tokens en logs | Information Disclosure | Alto | Enmascaramiento de datos |
| T09 | Ataques de fuerza bruta al login | Denial of Service | Alto | Rate limiting |
| T10 | Saturación de la API mediante solicitudes masivas | Denial of Service | Alto | Throttling |
| T11 | Acceso a funciones administrativas sin autorización | Elevation of Privilege | Crítico | RBAC |
| T12 | Acceso a cuentas de terceros mediante modificación de parámetros | Elevation of Privilege | Crítico | Validación de propietario |

---

# Mapeo de Deficiencias Iniciales de SecureBank API (Sesión 01)

Las siguientes amenazas corresponden a las vulnerabilidades deliberadamente incorporadas en la aplicación SecureBank API como parte del laboratorio inicial del curso.

| ID | Deficiencia Inicial | Categoría STRIDE | Riesgo | Mitigación |
|----|---------------------|------------------|---------|------------|
| C01 | Credenciales almacenadas en el código fuente | Information Disclosure | Alto | GitHub Secrets y gestión segura de secretos |
| C02 | Dependencias con vulnerabilidades conocidas | Tampering | Alto | Dependency Scanning y actualización periódica |
| C03 | Vulnerabilidad de SQL Injection | Tampering | Crítico | Consultas parametrizadas y validación de entradas |
| C04 | Controles de autorización insuficientes | Elevation of Privilege | Crítico | RBAC y validación de permisos |
| C05 | Contenedor ejecutado como usuario root | Elevation of Privilege | Alto | Uso de usuarios sin privilegios |
| C06 | Secretos almacenados de forma insegura | Information Disclosure | Alto | Vault o GitHub Secrets |
| C07 | Configuración insegura de infraestructura cloud | Elevation of Privilege | Alto | Hardening y revisión de configuraciones |
| C08 | Ausencia de monitoreo y auditoría | Repudiation | Medio | Logging centralizado y monitoreo continuo |
| C09 | Pipeline sin controles de seguridad | Tampering | Alto | Integración de SAST, SCA y validaciones automáticas |
