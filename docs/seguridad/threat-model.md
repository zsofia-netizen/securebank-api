# DFD SecureBank API
 
## Componentes
 
1. Usuario
2. Frontend Web
3. API SecureBank
4. Base de Datos
 
## Flujo de Datos
 
Usuario
↓
Frontend Web
↓
API SecureBank
↓
Base de Datos
 
## Trust Boundaries
 
### TB1 - Internet ↔ Frontend
 
Delimita el tráfico proveniente de Internet hacia la aplicación web.
 
### TB2 - Frontend ↔ API
 
Delimita la comunicación entre la interfaz de usuario y los servicios backend.
 
### TB3 - API ↔ Base de Datos
 
Delimita el acceso a la capa de persistencia de datos.
 
## Activos Críticos
 
- Credenciales de usuarios.
- Datos personales.
- Información de cuentas bancarias.
- Transferencias.
- Tokens JWT.
- Historial de transacciones.
