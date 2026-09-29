# Aplicación de Gestión para Comercios Locales

Aplicación móvil desarrollada con **Flutter y Dart** cuyo objetivo inicial es ayudar a los comercios locales a gestionar sus productos de manera sencilla.

El proyecto comenzará con un **MVP centrado en la gestión de productos mediante operaciones CRUD** y posteriormente evolucionará incorporando funcionalidades como autenticación, gestión avanzada de stock, lectura de códigos de barras mediante la cámara, consultas a APIs externas, carrito y ventas.

Este proyecto también tiene como objetivo servir como proyecto de aprendizaje y crecimiento dentro del desarrollo de aplicaciones móviles con Flutter.

---

##Estado del proyecto

**Estado actual:** Planificación del MVP

**Objetivo actual:** Construir una primera versión funcional que permita administrar productos localmente sin base de datos.

---

# Objetivo general

Crear una aplicación móvil que permita a pequeños comercios administrar sus productos de forma sencilla, con posibilidad de ampliar posteriormente el sistema para incorporar inventario, ventas y lectura de códigos de barras.

La idea es desarrollar el proyecto progresivamente, evitando incorporar tecnologías o funcionalidades innecesarias antes de que sean necesarias.

---

# Visión futura del proyecto

La versión inicial estará enfocada exclusivamente en los productos, pero la idea a largo plazo es llegar a una aplicación de gestión para comercios que pueda incluir:

* Gestión de productos
* Gestión de stock
* Historial de movimientos
* Lectura de códigos de barras mediante la cámara
* Consulta de información de productos mediante APIs externas
* Carrito de compra
* Registro de ventas
* Usuarios y autenticación
* Soporte para múltiples comercios
* Reportes
* Notificaciones y alertas
* Persistencia local
* Sincronización con base de datos remota

---

# MVP — Minimum Viable Product

El **MVP** estará enfocado exclusivamente en la gestión básica de productos.

## Funcionalidades incluidas

### CRUD de productos

* Crear productos
* Leer/listar productos
* Ver detalle de un producto
* Actualizar productos
* Eliminar productos
* Buscar productos

### Modelo inicial del producto

Cada producto tendrá inicialmente:

| Campo         | Tipo     | Descripción              |
| ------------- | -------- | ------------------------ |
| `id`          | `int`    | Identificador único      |
| `nombre`      | `String` | Nombre del producto      |
| `descripcion` | `String` | Descripción del producto |
| `precio`      | `double` | Precio de venta          |
| `stock`       | `int`    | Cantidad disponible      |

---

# Funcionalidades fuera del MVP

Para evitar aumentar innecesariamente la complejidad inicial, las siguientes funciones quedarán para etapas posteriores:

* Login
* Registro de usuarios
* Gestión de múltiples comercios
* Roles y permisos
* Scanner de códigos de barras
* Cámara
* APIs externas
* Carrito
* Ventas
* Proveedores
* Reportes
* Notificaciones
* Base de datos local
* Sincronización offline/online
* Backend propio

Estas funcionalidades podrán incorporarse progresivamente después de completar el MVP.

---

# Actor principal

En el MVP solamente existirá un actor:

**Usuario**

El usuario podrá realizar todas las operaciones relacionadas con los productos.

En futuras versiones podrán existir distintos actores, por ejemplo:

* Administrador
* Propietario
* Empleado

---

# Casos de uso

## CU-01 — Ver productos

El usuario puede acceder al módulo de productos y visualizar todos los productos registrados.

### Flujo

```
Usuario
   ↓
Accede a Productos
   ↓
Sistema obtiene los productos
   ↓
Sistema muestra la lista
```

---

## CU-02 — Crear producto

El usuario puede registrar un nuevo producto.

### Flujo

```
Usuario
   ↓
Pulsa "Agregar producto"
   ↓
Completa el formulario
   ↓
Pulsa "Guardar"
   ↓
Sistema valida los datos
   ↓
Sistema crea el producto
   ↓
Producto aparece en la lista
```

---

## CU-03 — Ver detalle del producto

El usuario puede seleccionar un producto y consultar toda su información.

### Flujo

```
Usuario
   ↓
Selecciona producto
   ↓
Sistema obtiene información
   ↓
Sistema muestra detalle
```

---

## CU-04 — Editar producto

El usuario puede modificar la información de un producto existente.

### Flujo

```
Usuario
   ↓
Selecciona producto
   ↓
Pulsa "Editar"
   ↓
Modifica información
   ↓
Pulsa "Guardar"
   ↓
Sistema valida datos
   ↓
Sistema actualiza producto
```

---

## CU-05 — Eliminar producto

El usuario puede eliminar un producto.

### Flujo

```
Usuario
   ↓
Selecciona producto
   ↓
Pulsa "Eliminar"
   ↓
Sistema muestra confirmación
   ↓
Usuario confirma
   ↓
Sistema elimina producto
   ↓
Lista de productos se actualiza
```

Si el usuario cancela:

```
Usuario cancela
   ↓
No se realiza ninguna modificación
```

---

## CU-06 — Buscar producto

El usuario puede buscar productos mediante su nombre.

### Flujo

```
Usuario
   ↓
Escribe término de búsqueda
   ↓
Sistema filtra productos
   ↓
Sistema muestra coincidencias
```

---

# Pantallas del MVP

El MVP contará inicialmente con cuatro pantallas principales.

## 1. Home

Pantalla inicial de la aplicación.

Su función principal será permitir el acceso al módulo de productos.

```
┌──────────────────────────────┐
│        Mi Comercio           │
│                              │
│    Gestión de productos      │
│                              │
│      [ Productos ]           │
│                              │
└──────────────────────────────┘
```

---

## 2. Productos

Pantalla principal del CRUD.

Funciones:

* Mostrar productos
* Buscar productos
* Acceder al detalle
* Crear un producto

```
┌──────────────────────────────┐
│ Productos              [+]   │
├──────────────────────────────┤
│    Buscar producto...        │
├──────────────────────────────┤
│ Coca Cola             $1500  │
│ Stock: 20                    │
├──────────────────────────────┤
│ Pan                   $1000  │
│ Stock: 15                    │
├──────────────────────────────┤
│ Yerba                 $2500  │
│ Stock: 8                     │
└──────────────────────────────┘
```

---

## 3. Crear producto

Formulario para registrar productos.

Campos:

* Nombre
* Descripción
* Precio
* Stock

```
┌──────────────────────────────┐
│      Nuevo producto          │
├──────────────────────────────┤
│ Nombre                       │
│ [________________________]   │
│                              │
│ Descripción                  │
│ [________________________]   │
│                              │
│ Precio                       │
│ [________________________]   │
│                              │
│ Stock                        │
│ [________________________]   │
│                              │
│       [ Guardar ]            │
└──────────────────────────────┘
```

---

## 4. Detalle del producto

Permite consultar la información de un producto y acceder a las acciones de edición y eliminación.

```
┌──────────────────────────────┐
│ Coca Cola                    │
├──────────────────────────────┤
│                              │
│ Descripción                  │
│ Gaseosa 500ml                │
│                              │
│ Precio                       │
│ $1500                        │
│                              │
│ Stock                        │
│ 20 unidades                  │
│                              │
│ [ Editar ]  [ Eliminar ]     │
└──────────────────────────────┘
```

---

# Flujo general de navegación

```
                         HOME
                           │
                           ▼
                      PRODUCTOS
                       /       \
                      /         \
                     ▼           ▼
                 + Agregar     Buscar
                     │
                     ▼
              CREAR PRODUCTO
                     │
                     ▼
                  Guardar
                     │
                     ▼
                  PRODUCTOS
                     │
                     ▼
              Seleccionar
                     │
                     ▼
            DETALLE PRODUCTO
                 /       \
                /         \
               ▼           ▼
            Editar      Eliminar
               │           │
               ▼           ▼
           FORMULARIO   Confirmación
               │           │
               └─────┬─────┘
                     ▼
                  PRODUCTOS
```

---

# Modelo de datos

## Entidad Producto

```
┌────────────────────────────┐
│          PRODUCTO          │
├────────────────────────────┤
│ id : int                   │
│ nombre : String            │
│ descripcion : String       │
│ precio : double            │
│ stock : int                │
└────────────────────────────┘
```

---

# Modelo Dart

La representación inicial del producto será mediante una clase Dart.

```dart
class Producto {
  final int id;
  final String nombre;
  final String descripcion;
  final double precio;
  final int stock;

  Producto({
    required this.id,
    required this.nombre,
    required this.descripcion,
    required this.precio,
    required this.stock,
  });
}
```

Ejemplo:

```dart
Producto(
  id: 1,
  nombre: 'Coca Cola',
  descripcion: 'Gaseosa 500ml',
  precio: 1500,
  stock: 20,
)
```

---

# Reglas y validaciones iniciales

## Nombre

Debe existir y no puede estar vacío.

```
 No  ""
 Si  "Coca Cola"
```

## Precio

Debe ser mayor que cero.

```
No -100
No 0
Si 1500
```

## Stock

No puede ser negativo.

```
No -5
Si 0
Si 10
```

## Descripción

La descripción podrá ser opcional en la primera versión.

---

#  Estructura inicial del proyecto

La estructura propuesta para el MVP será:

```
lib/
│
├── main.dart
│
├── models/
│   └── producto.dart
│
├── screens/
│   ├── home_screen.dart
│   ├── productos_screen.dart
│   ├── crear_producto_screen.dart
│   └── detalle_producto_screen.dart
│
├── widgets/
│   ├── producto_card.dart
│   └── producto_form.dart
│
└── services/
    └── producto_service.dart
```

---

# Responsabilidad de cada carpeta

## `main.dart`

Punto de entrada de la aplicación.

Responsabilidades:

* Inicializar Flutter
* Configurar la aplicación
* Definir la pantalla inicial

No se utilizará para almacenar toda la lógica de la aplicación.

---

## `models/`

Contendrá las clases que representan los datos de la aplicación.

Ejemplo:

```
models/
└── producto.dart
```

Pregunta que responde:

> ¿Cómo es un producto dentro de la aplicación?

---

## `screens/`

Contendrá las pantallas completas de la aplicación.

```
screens/
├── home_screen.dart
├── productos_screen.dart
├── crear_producto_screen.dart
└── detalle_producto_screen.dart
```

Pregunta que responde:

> ¿Qué ve el usuario?

---

## `widgets/`

Contendrá componentes reutilizables.

Ejemplos:

```
ProductoCard
ProductoForm
```

Esto permitirá reutilizar componentes entre diferentes pantallas.

---

## `services/`

Contendrá la lógica relacionada con acceso y manipulación de datos.

Inicialmente será una capa sencilla y posteriormente podrá encargarse de la comunicación con Supabase u otra fuente de datos.

---

# Separación de responsabilidades

La idea general de la aplicación seguirá esta lógica:

```
SCREEN
   ↓
WIDGETS
   ↓
MODEL
   ↓
SERVICE
   ↓
BASE DE DATOS / API
```

Por ejemplo, al crear un producto:

```
crear_producto_screen.dart
          ↓
producto_form.dart
          ↓
Producto(...)
          ↓
producto_service.dart
          ↓
Guardar producto
```

La finalidad de esta separación es evitar colocar toda la lógica dentro de las pantallas.

---

# Servicio de productos

Conceptualmente, el servicio tendrá operaciones similares a:

```dart
class ProductoService {
  void crearProducto(Producto producto) {}

  List<Producto> obtenerProductos() {
    return [];
  }

  void actualizarProducto(Producto producto) {}

  void eliminarProducto(int id) {}
}
```

La implementación podrá cambiar a medida que avance el proyecto.

---

# Tecnologías y herramientas

## --Tecnología principal--

### Flutter

Framework utilizado para desarrollar la aplicación.

### Dart

Lenguaje de programación utilizado por Flutter.

### Visual Studio Code

IDE principal para desarrollar el proyecto.

### Git

Sistema de control de versiones.

### GitHub

Repositorio remoto y plataforma para almacenar el código y administrar el proyecto.

---

# --Base de datos--

La base de datos propuesta para las versiones posteriores es:

## PostgreSQL

Se utilizará como base de datos relacional principal.

La elección se debe a que el proyecto evolucionará hacia entidades relacionadas como:

```
Comercio
   │
   ├── Usuarios
   ├── Productos
   ├── Categorías
   ├── Stock
   ├── Ventas
   └── Detalle de ventas
```

---

# --Backend inicial--

## Supabase

Supabase será la opción propuesta para las versiones que necesiten persistencia remota.

La arquitectura prevista será:

```
Flutter
   │
   ▼
Supabase
   │
   ▼
PostgreSQL
```

Supabase permitirá posteriormente incorporar:

* Base de datos PostgreSQL
* Autenticación
* APIs
* Control de acceso
* Persistencia remota

La idea es comenzar con una solución sencilla y posteriormente evaluar la construcción de un backend propio si el proyecto lo requiere.

---

# -- APIs --

Para futuras integraciones con APIs externas se plantea utilizar:

## Dio

Cliente HTTP para Dart/Flutter.

Permitirá trabajar con operaciones HTTP como:

```
GET
POST
PUT
PATCH
DELETE
```

Ejemplo conceptual:

```
GET    /products
POST   /products
PUT    /products/{id}
DELETE /products/{id}
```

---

# --Lectura de códigos de barras--

Una de las funcionalidades futuras más importantes será utilizar la cámara del teléfono para leer códigos de barras.

Se plantea utilizar:

## `mobile_scanner`

Flujo previsto:

```
Cámara
   ↓
Scanner
   ↓
Código de barras
   ↓
Buscar producto
```

---

# Librerias utilizacas
```
dependencies:
   flutter:
      sdk: flutter
   intl: ^0.20.2    //"en uso" obtencion de hora para el topbar
```


# Integración con APIs externas

Es importante distinguir entre:

**código de barras** y **datos del producto**.

El scanner normalmente devuelve un identificador:

```
7791234567890
```

Ese código no representa por sí mismo:

```
Nombre
Precio
Stock
Descripción
```

Por lo tanto, la lógica futura será:

```
                 ESCANEAR
                     │
                     ▼
              CÓDIGO DE BARRAS
                     │
                     ▼
             ¿Existe en mi BD?
                /          \
              SÍ            NO
              │              │
              ▼              ▼
          Producto       API externa
                            │
                            ▼
                      Datos sugeridos
                            │
                            ▼
                    Usuario confirma
                            │
                            ▼
                       Guardar BD
```

La API externa funcionará como una fuente de información para facilitar el registro, pero la información específica del comercio continuará perteneciendo a la base de datos propia.

---

# Ejemplo de diferenciación de datos

Una API externa podría devolver:

```
Nombre: Coca Cola
Marca: Coca Cola
Imagen: ...
```

Mientras que el comercio podría necesitar:

```
Precio compra: $1000
Precio venta: $1500
Stock: 25
Stock mínimo: 5
Proveedor: Distribuidora X
```

Por lo tanto:

> La API externa sirve como fuente de información del producto, no como sistema de inventario del comercio.

---

# Carrito y ventas

Estas funcionalidades estarán fuera del MVP.

En una etapa posterior se podrá implementar:

```
Escanear
   ↓
Producto
   ↓
Agregar al carrito
   ↓
Modificar cantidad
   ↓
Calcular total
   ↓
Confirmar venta
   ↓
Registrar venta
   ↓
Actualizar stock
```

El modelo futuro podría incorporar:

```
ventas
────────────────
id
comercio_id
usuario_id
fecha
total
```

y:

```
detalle_venta
────────────────
id
venta_id
producto_id
cantidad
precio_unitario
subtotal
```

---

# Gestión avanzada de stock

El MVP tendrá únicamente:

```
stock
```

Ejemplo:

```
Producto
Stock = 20
```

En una etapa posterior se agregará un sistema de movimientos:

```
movimientos_stock
────────────────────
id
producto_id
tipo
cantidad
fecha
motivo
```

Ejemplo:

```
Producto: Coca Cola

+20  ingreso
+30  ingreso
-2   venta
-3   venta
+10  ajuste
```

Esto permitirá posteriormente construir:

* Historial de stock
* Entradas
* Salidas
* Ajustes
* Reposición
* Alertas
* Auditoría

---

# Base de datos futura

Una posible estructura futura será:

```
usuarios
────────────────
id
nombre
email
...

comercios
────────────────
id
nombre
direccion
telefono
...

productos
────────────────
id
comercio_id
nombre
descripcion
precio
stock
codigo_barras
categoria_id
...

categorias
────────────────
id
nombre
...

movimientos_stock
────────────────
id
producto_id
tipo
cantidad
fecha
motivo
...

ventas
────────────────
id
comercio_id
usuario_id
fecha
total
...

detalle_venta
────────────────
id
venta_id
producto_id
cantidad
precio_unitario
subtotal
```

Esta estructura corresponde a una evolución futura y **no forma parte del MVP inicial**.

---

#  Roadmap del proyecto

El desarrollo se realizará progresivamente.

## Etapa 0 — Planificación

* Definir objetivo
* Definir MVP
* Definir casos de uso
* Definir pantallas
* Definir modelo de datos
* Definir estructura del proyecto

---

## Etapa 1 — Flutter básico

Construcción de las primeras pantallas:

```
Home
Productos
Crear producto
Detalle producto
```

Objetivo de aprendizaje:

* Widgets
* StatelessWidget
* StatefulWidget
* MaterialApp
* Scaffold
* Navegación
* Formularios
* TextField
* Botones
* Listas

---

## Etapa 2 — CRUD local

Implementación del CRUD utilizando datos temporales/locales.

```
Flutter
   ↓
Datos en memoria
```

Objetivo de aprendizaje:

* Modelos
* Listas
* Estado
* Formularios
* Crear
* Leer
* Actualizar
* Eliminar
* Validaciones

---

## Etapa 3 — Persistencia

Integración con:

```
Flutter
   ↓
Supabase
   ↓
PostgreSQL
```

Objetivo de aprendizaje:

* Base de datos
* SQL
* Consultas
* Persistencia
* Comunicación con backend
* Manejo de errores

---

## Etapa 4 — Autenticación

Agregar:

* Registro
* Login
* Logout
* Sesión
* Usuario actual

Posteriormente se podrá trabajar con múltiples comercios.

---

## Etapa 5 — Scanner

Agregar:

```
Cámara
   ↓
mobile_scanner
   ↓
Código de barras
```

---

## Etapa 6 — API externa

Permitir:

```
Código de barras
   ↓
API externa
   ↓
Información del producto
```

---

## Etapa 7 — Carrito y ventas

Agregar:

* Carrito
* Cantidades
* Total
* Confirmación
* Registro de venta
* Descuento de stock

---

## Etapa 8 — Inventario avanzado

Agregar:

* Movimientos
* Historial
* Stock mínimo
* Alertas
* Ajustes de stock

---

## Etapa 9 — Persistencia local y modo offline

Posible incorporación de:

### SQLite + Drift

Arquitectura:

```
                 INTERNET
                    │
                    ▼
                SUPABASE
                    ▲
                    │
                sincronización
                    │
                    ▼
                 FLUTTER
                    │
                    ▼
              SQLITE / DRIFT
```

Objetivo:

Permitir que la aplicación pueda seguir funcionando parcialmente sin conexión y sincronizar posteriormente.

---

#  Estrategia de aprendizaje

El proyecto se desarrollará como un proyecto de aprendizaje progresivo.

La prioridad no será escribir la mayor cantidad de código posible, sino entender qué se está construyendo.

Se buscará comprender:

```
¿Por qué existe este archivo?
¿Por qué utilizamos esta clase?
¿Por qué usamos StatefulWidget?
¿Por qué usamos StatelessWidget?
¿Cómo se comunica una pantalla con otra?
¿Cómo se representa un producto?
¿Cómo se guarda un producto?
¿Cómo se modifica?
¿Cómo se elimina?
¿Cómo llega la información a la base de datos?
```

La complejidad deberá aumentar junto con los conocimientos adquiridos.

---

# Evitar sobrearquitectura

Durante las primeras etapas se evitará agregar tecnologías que todavía no sean necesarias.

No se incorporarán inicialmente:

* Backend propio
* SQLite
* Riverpod
* APIs externas
* Autenticación
* Arquitecturas excesivamente complejas

Cada tecnología se agregará cuando el proyecto realmente la necesite y cuando exista una razón clara para utilizarla.

---

#  Testing

A medida que el proyecto avance se incorporarán pruebas.

Posibles niveles:

```
Unit Tests
Widget Tests
Integration Tests
```

Inicialmente se comenzará con las herramientas de testing disponibles en Flutter.

---

# Diseño

El diseño visual podrá planificarse previamente utilizando Figma.

La idea será separar:

```
Diseño
   ↓
Implementación Flutter
```

Esto permitirá practicar también el proceso de transformar un diseño visual en una interfaz funcional.

---

# Estructura futura aproximada

A medida que el proyecto crezca, la estructura podría evolucionar hacia:

```
lib/
│
├── main.dart
│
├── app/
│   ├── router/
│   ├── theme/
│   └── core/
│
├── models/
│
├── screens/
│
├── widgets/
│
├── services/
│
├── repositories/
│
└── features/
    ├── auth/
    ├── products/
    ├── inventory/
    ├── scanner/
    └── sales/
```

Esta estructura no tiene que implementarse desde el comienzo.

Se introducirá gradualmente.

---

#  Nombre del proyecto

El nombre definitivo todavía está pendiente.

Opciones iniciales:

### Orientados a tecnología

* Nexo
* Gestio
* Komer
* Localy

### Orientados al comercio

* Comerzia
* Mercato
* ComerciApp
* PuntoLocal

### Orientados al crecimiento

* Impulso
* Avanza
* Potencia
* Nexo

El nombre final será definido posteriormente.

---

# 🛠️ Stack tecnológico previsto

| Área                  | Tecnología         |
| --------------------- | ------------------ |
| Lenguaje              | Dart               |
| Framework             | Flutter            |
| IDE                   | Visual Studio Code |
| Control de versiones  | Git                |
| Repositorio           | GitHub             |
| Base de datos         | PostgreSQL         |
| Backend inicial       | Supabase           |
| HTTP / APIs           | Dio                |
| Scanner               | mobile_scanner     |
| Base local futura     | SQLite + Drift     |
| Estado futuro         | Riverpod           |
| Diseño                | Figma              |
| Testing               | flutter_test       |
| Automatización futura | GitHub Actions     |

---

# Evolución de la arquitectura

## Primera versión

```
Flutter
   ↓
Datos locales
```

## Segunda versión

```
Flutter
   ↓
Supabase
   ↓
PostgreSQL
```

## Versión futura

```
                  ┌───────────────┐
                  │     FLUTTER   │
                  └───────┬───────┘
                          │
              ┌───────────┼───────────┐
              │           │           │
              ▼           ▼           ▼
         Supabase      Scanner       Dio
              │           │           │
              ▼           │           ▼
         PostgreSQL       │      APIs externas
                          │
                          ▼
                      Cámara
```

---

# Objetivo del MVP

El MVP se considerará terminado cuando el usuario pueda:

```
✓ Abrir la aplicación
✓ Acceder al módulo de productos
✓ Ver productos
✓ Crear productos
✓ Consultar un producto
✓ Editar productos
✓ Eliminar productos
✓ Buscar productos
✓ Validar correctamente los datos
```

Una vez cumplidos estos puntos se podrá comenzar la siguiente etapa.

---

# Principio fundamental del proyecto

**Primero entender, después implementar, y finalmente ampliar.**

El objetivo no es únicamente construir una aplicación funcional.

El objetivo es aprender progresivamente a desarrollar una aplicación móvil real utilizando Flutter y Dart, comprendiendo la arquitectura, los datos, la lógica de negocio y la comunicación entre las diferentes partes del sistema.

---

#  Licencia

La licencia del proyecto será definida posteriormente.
