# Repositorio de Riesgos - SecureBank API
 
## R01
**Riesgo:**
Robo de credenciales.
 

**Descripción:**
Un atacante obtiene las credenciales de un cliente.
 

**STRIDE:**
Spoofing.
 

**Impacto:**
Acceso no autorizado a cuentas bancarias.
 

**Mitigación:**
MFA y contraseñas seguras.
 

---
 
## R02
**Riesgo:**
JWT falsificado.
 

**Descripción:**
Manipulación o generación de tokens inválidos.
 

**STRIDE:**
Spoofing.
 

**Impacto:**
Acceso indebido al sistema.
 

**Mitigación:**
Validación criptográfica del token.
 

---
 
## R03
**Riesgo:**
Manipulación de transferencias.
 

**Descripción:**
Modificación de montos o destinatarios.
 

**STRIDE:**
Tampering.
 

**Impacto:**
Fraude financiero.
 

**Mitigación:**
Validaciones en backend.
 

---
 
## R04
**Riesgo:**
Alteración de parámetros.
 

**Descripción:**
Cambios maliciosos en solicitudes.
 

**STRIDE:**
Tampering.
 

**Impacto:**
Corrupción de datos.
 

**Mitigación:**
Validación de entradas.
 

---
 
## R05
**Riesgo:**
Negación de transacciones.
 

**Descripción:**
Un usuario desconoce una operación realizada.
 

**STRIDE:**
Repudiation.
 

**Impacto:**
Conflictos y pérdida de trazabilidad.
 

**Mitigación:**
Logs de auditoría.
 

---
 
## R06
**Riesgo:**
Exposición de información sensible.
 

**Descripción:**
Filtración de datos bancarios.
 

**STRIDE:**
Information Disclosure.
 

**Impacto:**
Pérdida de confidencialidad.
 

**Mitigación:**
Cifrado TLS.
 

---
 
## R07
**Riesgo:**
Exposición de tokens.
 

**Descripción:**
Divulgación de sesiones activas.
 

**STRIDE:**
Information Disclosure.
 

**Impacto:**
Secuestro de sesión.
 

**Mitigación:**
Ocultar tokens en logs.
 

---
 
## R08
**Riesgo:**
Ataque de fuerza bruta.
 

**Descripción:**
Intentos masivos de autenticación.
 

**STRIDE:**
Denial of Service.
 

**Impacto:**
Compromiso de cuentas.
 

**Mitigación:**
Rate Limiting.
 

---
 
## R09
**Riesgo:**
Saturación de servicios.
 

**Descripción:**
Exceso de solicitudes.
 

**STRIDE:**
Denial of Service.
 

**Impacto:**
Indisponibilidad.
 

**Mitigación:**
Throttling y monitoreo.
 

---
 
## R10
**Riesgo:**
Escalamiento de privilegios.
 
**Descripción:**
Acceso a funciones administrativas.
 
**STRIDE:**
Elevation of Privilege.
 
**Impacto:**
Control total del sistema.
 
**Mitigación:**
RBAC y principio de mínimo privilegio.
