# Plan de Mitigación

| Hallazgo | Acción Correctiva | Responsable | Verificación |
|------------|------------|------------|------------|
| BOLA | Validar ownership en backend | Backend Team | Respuesta 403 |
| Headers ausentes | Agregar CSP y HSTS | Backend Team | Reescaneo ZAP |
| Cookies inseguras | HttpOnly, Secure, SameSite | Backend Team | Inspección de Set-Cookie |
| Endpoints sensibles expuestos | Revisar autorización | Backend Team | Reescaneo ZAP |
