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
