# Proyecto de Automatización de Pruebas - Examen Final

## Descripción del Proyecto
Este repositorio contiene la configuración de un pipeline de Integración y Despliegue Continuo (CI/CD) diseñado para validar y desplegar código de forma automatizada. Se utiliza **GitFlow** para el manejo de ramas y **Maven** para la administración de dependencias.

## Estrategia de Pruebas Implementada
La estrategia de pruebas sigue una estructura por niveles para garantizar feedback rápido y confiabilidad:
1. **Pruebas Unitarias:** Ejecutadas rápidamente tras cada commit para validar la lógica aislada.
2. **Pruebas de Integración:** Validan la interacción entre módulos del sistema.
3. **Acceptance Test Gate (E2E):** Pruebas funcionales en un ambiente efímero (Staging) que fungen como barrera antes de permitir el paso a Producción.

En caso de fallo en el despliegue a producción, el pipeline cuenta con un mecanismo de **Rollback automático** mediante scripts de Helm para restaurar la última versión estable de inmediato.

## Instrucciones de Ejecución
1. Clonar este repositorio: `git clone <tu-url>`
2. Para ejecutar las pruebas localmente: `mvn clean test`
3. Para disparar el pipeline: Realizar un push a la rama `develop` o `main` para que el servidor CI detecte el cambio e inicie los stages.

## Evidencias
*(Adjuntas en el documento de Word final entregado en plataforma)*