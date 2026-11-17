# Análisis: sustitución de `securebank:v1` en el registry


## Escenario

Un atacante reemplaza la imagen `securebank:v1` en el registry por una versión modificada.
¿Cómo se detecta antes de que llegue a producción?

## Detección en tres capas

1. **La firma no verifica.** La imagen sustituta no fue firmada por la identidad del workflow
   autorizado (`supply-chain.yml`). `cosign verify` devuelve error y el job `verify` termina
   en rojo, por lo que el job `deploy` nunca se ejecuta. Evidencia: `evidencias/<COMPLETAR>.png`.
2. **El digest no coincide.** El tag `:v1` ahora apunta a un `sha256` distinto del registrado
   en los logs del build (`<COMPLETAR: sha256 original>`). Comparar contra ese valor detecta
   el cambio aunque el tag se vea igual.
3. **El admission controller la rechaza.** En el clúster, una política (Kyverno o
   policy-controller) exige firma válida de la identidad esperada; el Pod no llega a arrancar.

## Por qué se firma el digest y no el tag

Los tags son mutables: cualquiera con permiso de escritura puede reapuntarlos. El digest
identifica el contenido y no puede cambiar sin cambiar el hash. Por eso `cosign sign` y el
Deployment usan `imagen@sha256:...`.

## Lección de SolarWinds

Firmar no basta si el proceso que firma está comprometido: la puerta trasera SUNBURST viajó en
una actualización legítimamente firmada. Por eso además de la firma se necesitan builds aislados
y efímeros (GitHub Actions hospedado), provenance verificable y verificación previa al deploy.

## Evidencias

| Evidencia | Archivo |
|---|---|
| Digest registrado en logs del build | `evidencias/<COMPLETAR>` |
| SBOM CycloneDX (artefacto del workflow) | `evidencias/<COMPLETAR>` |
| Entrada en Rekor | `evidencias/<COMPLETAR>` |
| Pipeline rojo ante imagen no firmada | `evidencias/<COMPLETAR>` |

