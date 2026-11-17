# Análisis BOLA

## Vulnerabilidad Detectada

GET /users/{id}

## Problema

El sistema valida que el usuario está autenticado, pero no verifica si el recurso solicitado pertenece realmente a ese usuario.

## Ejemplo

Usuario autenticado:
Alice

Acceso legítimo:
GET /users/100

Acceso indebido:
GET /users/101

Resultado:
La API devuelve información de otro usuario.

## Causa

Falta de validación de ownership.

## Solución

Verificar que:

req.user.id == requestedId

antes de devolver la información solicitada.

## Resultado Esperado

Solicitud no autorizada:

HTTP 403 Forbidden
