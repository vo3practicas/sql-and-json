# ASIGNACION:

### 1. Crear una base de datos para un banco llamada `banco_central`.
---
### 2. Crea el modelo y define el tipo de datos que tendra cada tabla, ej:

**usuarios:**
``` sql
CREATE TABLE IF NOT EXISTS users (
    id INT(6) PRIMARY KEY AUTO_INCREMENT,
    f_name VARCHAR(50),
    l_name VARCHAR(50),
    email VARCHAR(50),
    phone VARCHAR(25),
    address VARCHAR(255),
    created_at DATETIME;
)
```
---
### 3. Crear las tablas de `usuarios`, `cuentas`, `tipos_de_cuentas`, `transacciones` y `tipo_de_transacciones`.
---
### 4. Agrega valores iniciales a los usuarios, ej:

**usuarios:**
``` sql
INSERT INTO `users` (f_name, l_name, email, phone, address, created_at) VALUES 
('Juanito', 'Alimaña', 'juanito.alimaña@example.com', '+11123456', 'Calle 1, Casa 1', NOW()),
('Pedro', 'Picapiedras', 'pedro.picapiedras@example.com', '+11123457', 'Calle 1, Casa 2', NOW()),
('Pablo', 'Mármol',	'pablo.marmol@example.com',	'+11123458', 'Calle 1, Casa 3', NOW()),
('Super', 'Sónico',	'super.sonico@example.com',	'+11123459', 'Calle 1, Casa 4', NOW()),
('Ultra', 'Sónico',	'ultra.sonico@example.com',	'+11123460', 'Calle 1, Casa 5', NOW());
```
---
### 5. Definir tipos de cuentas, ej:

**tipos_de_cuentas:**
``` sql
INSERT INTO `account_types` (name) VALUES 
('Checking Accounts'),
('Savings Account'),
('Time Deposit Account'),
('Joint Account'),
('Business Account');
```
---
### 6. Definir tipos de transacciones, ej:

**tipos_de_cuentas:**
``` sql
INSERT INTO `account_types` (name) VALUES 
('Deposit'),
('Withdrawl'),
('Transfer'),
('Payment'),
('Charge');
```
---
## RETO:
- Crea las tablas `cuentas` y `transacciones` haciendo las relaciones correspondientes y ejecuta al menos unas 3 operaciones.
- Haz 3 consultas que tengan como condición `entre XXX y XXX montos` y agrupar por `tipos_de_transaccion`.
- Copia cada consulta explicando lo que hace en un archivo.txt y envíala a [jorge.torrelles@vo3practicas.com](mailto:jorge.torrelles@vo3practicas.com).
---
## CONSIDERACIONES:
- No olvides crear siempre los campos de ID con valor numérico entero y autoincremental.
- Recuerda siempre `usar_el_snake_case` en minúsculas y no usar caractéres especiales del español.
- Las relaciones las puedes vincular con el campo que quieras,pero recuerda que el ID es lo que nunca cambia y por ende hace que sea escalable a futuro sin cambiar las relaciones.
- **SIEMPRE** consulta cuando tengas dudas, somos comunidad.

## REFERENCIAS:
- [W3SCHOOL](https://www.w3schools.com/sql/default.asp).
- [SQLite](https://www.sqlitetutorial.net/).
- [CODEACADEMY](https://www.codecademy.com/resources/docs/sql/about-sql).
- [TUTORIALSPOINT](https://www.tutorialspoint.com/sql/index.htm).