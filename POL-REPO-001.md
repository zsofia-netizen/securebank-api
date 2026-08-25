# POL-REPO-001
## Política de Repositorios Seguros
 
### 1. Alcance

Esta política aplica al repositorio SecureBank API y a cualquier repositorio utilizado para el desarrollo de software dentro de la organización
 
---
 
### 2. Roles y Responsabilidades
 
#### Developer
- Desarrollar código siguiendo buenas prácticas de seguridad.
- Crear ramas de trabajo para nuevas funcionalidades.
- Enviar cambios mediante Pull Request.
 
#### Reviewer
- Revisar cambios antes de aprobar un Pull Request.
- Verificar calidad y seguridad del código.
 
#### Code Owner
- Responsable de autorizar cambios en archivos críticos.
- Mantener estándares de seguridad del proyecto.

 

#### Release Manager

- Autorizar versiones oficiales del sistema.
- Gestionar tags y releases.
 

#### Secret Custodian
- Administrar secretos y credenciales.
- Supervisar la rotación de claves y accesos.
 
---
 
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
