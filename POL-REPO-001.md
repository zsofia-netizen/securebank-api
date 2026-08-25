# POL-REPO-001
## Política de Repositorios Seguros
 
### 1. Alcance

Esta política aplica al repositorio SecureBank API y a cualquier repositorio utilizado para el desarrollo de software dentro de la organización
 
## 2. Roles y Responsabilidades
### Sofía Belén Zenteno Jaureguis
Roles:
- Code Owner
- Reviewer

Responsabilidades:
- Revisar Pull Requests.
- Aprobar cambios en archivos críticos.
- Verificar el cumplimiento de las políticas de seguridad.
- Supervisar la protección de la rama principal.

### Genessis Inalef
Roles:
- Developer
- Secret Custodian

Responsabilidades:
- Desarrollar funcionalidades.
- Gestionar secretos y credenciales.
- Evitar la exposición de información sensible en el repositorio.
- Apoyar revisiones de seguridad.

### Christine Maulen
Roles:
- Developer
- Release Manager
 
Responsabilidades:
- Desarrollar funcionalidades.
- Gestionar tags y releases.
- Coordinar versiones publicables.
- Mantener el registro de cambios del proyecto.
 
### 3. Reglas Técnicas Obligatorias
 
- MFA obligatorio para todos los integrantes.
- Rama main protegida.
- Pull Request obligatorio antes de cualquier merge.
- Mínimo una aprobación para fusionar cambios.
- Commits firmados cuando sea posible.
- Uso de CODEOWNERS para archivos críticos.
- Escaneo de secretos en cada push.
- Prohibido almacenar contraseñas o claves en el repositorio.
 
---
 
### 4. Matriz de Permisos
 
| Acción | Responsable |
|----------|----------|
| Hacer merge a main | Reviewer + Code Owner |
| Modificar pipelines | Code Owner |
| Crear releases | Release Manager |
| Administrar secretos | Secret Custodian |
 
---
 
### 5. Excepciones y Revisión

Los cambios críticos o hotfix podrán ser aprobados mediante revisión acelerada por el responsable del proyecto.
La política será revisada periódicamente para asegurar su vigencia y efectividad.
