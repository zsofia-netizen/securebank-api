# Security Stories

## SS-01

Como sistema

quiero autenticar usuarios mediante JWT firmados

para evitar suplantación de identidad.

---

## SS-02

Como sistema

quiero limitar la cantidad de intentos de inicio de sesión

para prevenir ataques de fuerza bruta.

---

## SS-03

Como sistema

quiero verificar que un usuario sea propietario de la cuenta origen

para impedir transferencias no autorizadas.

---

## SS-04

Como sistema

quiero registrar todas las operaciones críticas

para garantizar trazabilidad y auditoría.

---

## SS-05

Como sistema

quiero ocultar información sensible en registros y logs

para evitar exposición de datos.

---

## SS-06

Como sistema

quiero validar todos los parámetros recibidos

para prevenir manipulación de solicitudes.

---

## SS-07

Como sistema

quiero controlar privilegios mediante roles

para evitar escalamiento de privilegios.

---

## SS-08

Como sistema

quiero cifrar las comunicaciones

para proteger la información transmitida.



---

# Security Stories Asociadas a las Deficiencias Iniciales de SecureBank API

## SS-C01

Como sistema

quiero almacenar credenciales fuera del código fuente

para evitar la exposición de secretos.

---

## SS-C02

Como sistema

quiero analizar automáticamente las dependencias utilizadas

para detectar vulnerabilidades conocidas antes del despliegue.

---

## SS-C03

Como sistema

quiero utilizar consultas parametrizadas

para prevenir ataques de SQL Injection.

---

## SS-C04

Como sistema

quiero verificar los permisos asociados a cada usuario

para impedir accesos no autorizados a recursos protegidos.

---

## SS-C05

Como sistema

quiero ejecutar contenedores utilizando usuarios sin privilegios

para reducir el impacto de una posible intrusión.

---

## SS-C06

Como sistema

quiero almacenar secretos mediante mecanismos seguros

para evitar la filtración de claves y tokens.

---

## SS-C07

Como sistema

quiero validar configuraciones de infraestructura antes del despliegue

para prevenir configuraciones inseguras en la nube.

---

## SS-C08

Como sistema

quiero registrar eventos de seguridad y actividad crítica

para disponer de trazabilidad y monitoreo.



---

## SS-C09

Como sistema

quiero integrar controles automáticos de seguridad en el pipeline CI/CD

para detectar vulnerabilidades antes de llegar a producción.
