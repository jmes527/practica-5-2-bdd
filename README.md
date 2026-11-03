# Práctica 5.2 - Pruebas BDD con Gherkin

## Descripción del Proyecto
Este proyecto contiene la especificación de comportamientos (BDD - Behavior Driven Development) redactados en lenguaje **Gherkin** para una plataforma de comercio electrónico.

## Explicación de Escenarios de Prueba

1. **Escenario 1 (Caso Exitoso - Login):** Valida la autenticación correcta con credenciales válidas y la navegación directa hacia el catálogo principal de la tienda.
2. **Escenario 2 (Caso de Error - Login Bloqueado):** Valida el control de acceso del sistema cuando un usuario bloqueado intenta ingresar, asegurando que se presente el mensaje de alerta correspondiente y se impida el acceso.
3. **Escenario 3 (Caso Exitoso - Carrito de Compras):** Valida la interacción UI al agregar un artículo al carrito, comprobando la actualización reactiva del contador de la interfaz y la actualización del estado del botón.
4. **Escenario 4 (Caso Exitoso - Checkout):** Valida que el formulario de datos de envío acepte entradas válidas y permita avanzar a la etapa de revisión de la compra.
5. **Escenario 5 (Caso de Error - Formulario Incompleto):** Valida las reglas de negocio y validaciones de campos requeridos (código postal missing), garantizando la integridad de la información antes de procesar la transacción.