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



---

# Riesgos Base del Caso de Estudio (Sesión 01)

Los siguientes riesgos corresponden a las vulnerabilidades deliberadamente incorporadas en SecureBank API como parte de las actividades iniciales del curso.

---

## C01

**Riesgo:**
Credenciales almacenadas en el código fuente.

**Descripción:**
Usuarios y contraseñas se encuentran directamente dentro de la aplicación.

**STRIDE:**
Information Disclosure.

**Impacto:**
Exposición de información sensible y acceso no autorizado.

**Mitigación:**
Uso de GitHub Secrets y gestión segura de credenciales.

---

## C02

**Riesgo:**
Dependencias vulnerables.

**Descripción:**
La aplicación utiliza librerías con vulnerabilidades conocidas.

**STRIDE:**
Tampering.

**Impacto:**
Compromiso de la aplicación mediante componentes inseguros.

**Mitigación:**
Análisis SCA y actualización periódica de dependencias.

---

## C03

**Riesgo:**
SQL Injection.

**Descripción:**
Entradas de usuario utilizadas directamente en consultas SQL.

**STRIDE:**
Tampering.

**Impacto:**
Lectura, modificación o eliminación de datos.

**Mitigación:**
Consultas parametrizadas y validación de entradas.

---

## C04

**Riesgo:**
Controles de autorización insuficientes.

**Descripción:**
Los usuarios pueden acceder a recursos para los que no poseen permisos.

**STRIDE:**
Elevation of Privilege.

**Impacto:**
Acceso indebido a información y funciones críticas.

**Mitigación:**
RBAC y validación de permisos.

---

## C05

**Riesgo:**
Contenedor ejecutado como usuario root.

**Descripción:**
El contenedor posee privilegios excesivos.

**STRIDE:**
Elevation of Privilege.

**Impacto:**
Mayor impacto ante una intrusión.

**Mitigación:**
Uso de usuarios sin privilegios dentro del contenedor.

---

## C06

**Riesgo:**
Secretos almacenados de forma insegura.

**Descripción:**
Claves y tokens almacenados sin mecanismos seguros.

**STRIDE:**
Information Disclosure.

**Impacto:**
Filtración de información sensible.

**Mitigación:**
Uso de Vault o GitHub Secrets.

---

## C07

**Riesgo:**
Configuración cloud insegura.

**Descripción:**
Recursos desplegados con configuraciones débiles.

**STRIDE:**
Elevation of Privilege.

**Impacto:**
Accesos no autorizados a la infraestructura.

**Mitigación:**
Hardening y revisión de configuraciones.

---

## C08

**Riesgo:**
Ausencia de monitoreo y auditoría.

**Descripción:**
No existe seguimiento de acciones o eventos críticos.

**STRIDE:**
Repudiation.

**Impacto:**
Pérdida de trazabilidad e imposibilidad de investigar incidentes.

**Mitigación:**
Logs centralizados y monitoreo continuo.

---

## C09

**Riesgo:**
Pipeline sin controles de seguridad.

**Descripción:**
Los cambios se integran sin análisis de seguridad.

**STRIDE:**
Tampering.

**Impacto:**
Despliegue de software vulnerable.

**Mitigación:**
SAST, SCA y validaciones automáticas en CI/CD.
