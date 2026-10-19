# SecureBank API

Proyecto académico orientado a la aplicación de prácticas DevSecOps.

## Tecnologías

- Python
- Docker
- GitHub Actions

## Estructura

src/ Código fuente

tests/ Pruebas unitarias

docs/ Documentación

## Ejecución

pip install -r requirements.txt

python src/main.py

## Controles de Seguridad

El proyecto integra prácticas DevSecOps mediante:

- GitHub Actions
- Pytest
- Pip Audit
- Safety
- Semgrep (SAST)

## Controles DevSecOps

El proyecto implementa los siguientes controles:

- Pytest (Pruebas automáticas)
- pip-audit (SCA)
- Safety (Análisis de dependencias)
- Gitleaks (Detección de secretos)
- Semgrep (SAST)

Estos controles se ejecutan automáticamente mediante GitHub Actions.

Estas herramientas permiten identificar errores de calidad y vulnerabilidades de seguridad antes de integrar cambios al repositorio.
