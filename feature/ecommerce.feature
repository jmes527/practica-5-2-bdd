# language: es
Característica: Gestión del Flujo de Compras y Autenticación en la Tienda Online
  Como un usuario de la plataforma de comercio electrónico
  Quiero autenticarme y gestionar productos en el carrito
  Para poder completar compras de forma segura y rápida

  # Escenario 1: Caso Exitoso (Login)
  Escenario: Inicio de sesión exitoso con credenciales válidas
    Dado que el usuario navega a la página de inicio de sesión "https://www.saucedemo.com/"
    Cuando ingresa el usuario "standard_user" y la contraseña "secret_sauce"
    Y presiona el botón de inicio de sesión
    Entonces el sistema debe redirigir al usuario al catálogo de productos "/inventory.html"
    Y debe mostrar la lista completa de productos disponibles

  # Escenario 2: Caso de Error (Login con credenciales incorrectas)
  Escenario: Intento de inicio de sesión con usuario bloqueado o credenciales incorrectas
    Dado que el usuario navega a la página de inicio de sesión "https://www.saucedemo.com/"
    Cuando ingresa el usuario "locked_out_user" y la contraseña "secret_sauce"
    Y presiona el botón de inicio de sesión
    Entonces el sistema debe permanecer en la página de inicio de sesión
    Y debe mostrar un mensaje de error que indique "Epic sadface: Sorry, this user has been locked out."

  # Escenario 3: Caso Exitoso (Carrito)
  Escenario: Agregar un producto al carrito de compras exitosamente
    Dado que el usuario ha iniciado sesión correctamente en la tienda
    Cuando hace clic en el botón "Add to cart" del producto "Sauce Labs Backpack"
    Entonces el icono del carrito de compras debe actualizar su contador a "1"
    Y el botón del producto debe cambiar su estado a "Remove"

  # Escenario 4: Caso Exitoso (Checkout / Formulario)
  Escenario: Completar el formulario de envío con datos válidos
    Dado que el usuario tiene productos en su carrito de compras
    Y se encuentra en la pantalla de información del cliente "/checkout-step-one.html"
    Cuando ingresa el nombre "Jesus", el apellido "Encarnacion" y el código postal "10101"
    Y presiona el botón "Continue"
    Entonces el sistema debe avanzar a la pantalla de resumen del pedido "/checkout-step-two.html"

  # Escenario 5: Caso de Error (Formulario incompleto)
  Escenario: Intentar continuar el proceso de checkout sin completar los campos obligatorios
    Dado que el usuario se encuentra en la pantalla de información del cliente "/checkout-step-one.html"
    Cuando deja el campo de código postal vacío
    Y ingresa el nombre "Jesus" y el apellido "Encarnacion"
    Y presiona el botón "Continue"
    Entonces el sistema debe mostrar un mensaje de validación "Error: Postal Code is required"
    Y no debe permitir avanzar al siguiente paso del pedido