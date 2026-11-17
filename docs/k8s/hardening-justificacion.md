# Justificación del hardening

## 1. Configuraciones problemáticas encontradas (manifiesto original)

| # | Configuración original | Riesgo | Severidad |
|---|---|---|---|
| 1 | `<COMPLETAR: p. ej. runAsUser: 0>` | Root en el contenedor | Alto |
| 2 | `<COMPLETAR: sin runAsNonRoot>` | Nada impide arrancar como root | Alto |
| 3 | `<COMPLETAR: sin capabilities.drop>` | Capabilities Linux por defecto | Alto |
| 4 | `<COMPLETAR: imagen :latest>` | Imagen no verificable ni trazable | Medio-Alto |
| 5 | `<COMPLETAR: contraseña en env.value>` | Secreto en texto plano en el manifiesto | Alto |
| 6 | `<COMPLETAR: sin resources.limits>` | Agotamiento de recursos del nodo | Medio |

## 2. Cambios aplicados y justificación

| Cambio | Justificación (una línea) |
|---|---|
| `runAsNonRoot: true` + `runAsUser: 10001` | Impide arrancar como root; el UID coincide con `appuser` del Dockerfile. |
| `readOnlyRootFilesystem: true` + `emptyDir` en `/tmp` | Impide modificar binarios en runtime; `/tmp` queda como único espacio escribible. |
| `capabilities.drop: ["ALL"]` | Elimina capabilities Linux; aunque se comprometa el pod, no puede manipular red ni dispositivos. |
| `allowPrivilegeEscalation: false` | Bloquea la escalada de privilegios vía setuid. |
| `resources.requests` / `limits` | Acota CPU y memoria; evita DoS interno sobre el nodo. |
| `image: ...@sha256:<digest>` | El digest es inmutable; un tag puede ser reescrito en el registry. |
| `secretKeyRef` en lugar de `env.value` | La credencial sale del manifiesto versionado. |
| `automountServiceAccountToken: false` | El pod no recibe credenciales de la API de Kubernetes que no necesita. |
| `seccompProfile: RuntimeDefault` | Filtra llamadas al sistema peligrosas. |

## 3. Validación

```bash
kubectl apply -f k8s/hardened/
kubectl get pods -n securebank
kube-score score k8s/hardened/deployment.hardened.yaml
kubesec scan k8s/hardened/deployment.hardened.yaml
```

- Captura `kubectl get pods`: `<COMPLETAR>`
- Captura kube-score: `<COMPLETAR>`
- Captura kubesec (score): `<COMPLETAR>`

## 4. Riesgos residuales

Sin NetworkPolicy, sin probes de liveness/readiness, Secret sin cifrado en reposo (requiere KMS o SealedSecrets).
