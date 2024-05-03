# CURSO SQL & JSON
> **Institución**: [VO3Prácticas](https://vo3practicas.com/)<br>
> **Docente**: Jorge Torrelles
---
## Links de referencias:
1. ### Web:
    - [SQL](https://www.w3schools.com/sql/default.asp)
    - [MYSQL](https://www.w3schools.com/mysql/default.asp)
    - [POSTGRESQL](https://www.w3schools.com/postgresql/index.php)
    - [MONGODB](https://www.w3schools.com/mongodb/index.php)
    - [JSON](https://www.json.org/json-en.html)
---
2. ### Youtube:
    - [HDELEON](https://www.youtube.com/watch?v=fqxuHo2MJY8&ab_channel=hdeleon.net)
---
## Glosario:
### **Definiciones**:
1. #### Verbos:
    - `SELECT` Se utiliza para recuperar datos de una o más tablas.
    - `FROM` Especifica de qué tabla o tablas se están seleccionando los datos.
    - `WHERE` Permite filtrar filas basadas en una condición específica.
    - `INSERT INTO` Se utiliza para insertar nuevos registros en una tabla.
    - `UPDATE` Modifica los datos existentes en una tabla.
    - `DELETE FROM` Elimina registros de una tabla.
    - `ORDER BY` Ordena los resultados de la consulta en función de una o más columnas.
    - `GROUP BY` Agrupa filas que tienen los mismos valores en una o más columnas, usualmente se usa con funciones de agregación como SUM, COUNT, AVG, etc.
    - `HAVING` Se utiliza con GROUP BY para filtrar grupos de filas que cumplen con ciertas condiciones.
    - `INNER JOIN` Combina filas de dos o más tablas basadas en una condición relacionada entre ellas.
    - `LEFT JOIN` Devuelve todas las filas de la tabla izquierda y las filas coincidentes de la tabla derecha.
    - `RIGHT JOIN` Devuelve todas las filas de la tabla derecha y las filas coincidentes de la tabla izquierda.
    - `FULL OUTER JOIN` Devuelve todas las filas cuando hay una coincidencia en cualquiera de las tablas.
    - `UNION` Combina el resultado de dos o más consultas en una sola tabla de resultados.
    - `DISTINCT` Se utiliza para devolver solo valores únicos en los resultados de una consulta.
    - `LIMIT` Limita el número de filas que se devuelven en el resultado de la consulta.
    - `OFFSET` Se utiliza con LIMIT para especificar cuántas filas saltar desde el principio del conjunto de resultados.
---
2. #### Sintaxis:
    - `'` comillas simples para cadenas de texto
    - `,` separar valores
    - `;` cierra la sentencia `SQL`
---
3. #### Operadores de comparación:
    - `*` Todo.
    - `=` Igual a.
    - `<` Menor que.
    - `>` Mayor que.
    - `<=` Menor o igual que.
    - `>=` Mayor o igual que.
    - `<>` o `!=` No igual a.
---
4. #### Operadores lógicos:
    - `AND` Devuelve verdadero si todas las condiciones son verdaderas.
    - `OR` Devuelve verdadero si al menos una de las condiciones es verdadera.
    - `NOT` Devuelve verdadero si la condición es falsa, y viceversa.
---
5. #### Operadores de pertenencia:
    - `IN` Comprueba si un valor está dentro de un conjunto de valores.
    - `NOT IN` Comprueba si un valor no está dentro de un conjunto de valores.
    - `REFERENCES` Asigna el valor de las llaves foráneas haciendo referencia a una tabla y la columna del valor.
---
6. #### Operadores de rango:
    - `BETWEEN` Comprueba si un valor está dentro de un rango especificado.
    - `NOT BETWEEN` Comprueba si un valor no está dentro de un rango especificado.
---
7. #### Operadores de concatenación de cadenas:
    - `CONCAT` Concatena dos o más cadenas.
    - `||` Otro operador de concatenación de cadenas (dependiendo del motor de base de datos).
---
8. #### Operadores de coincidencia de patrones:
    - `LIKE` Comprueba si una cadena coincide con un patrón especificado.
    - `NOT LIKE` Comprueba si una cadena no coincide con un patrón especificado.
---
9. #### Operadores de NULL:
    - `IS NULL` Comprueba si un valor es nulo.
    - `IS NOT NULL` Comprueba si un valor no es nulo.
---
10. #### Operadores de agregación:
    - `COUNT` Cuenta el número de filas seleccionadas.
    - `SUM` Calcula la suma de los valores seleccionados.
    - `AVG` Calcula el promedio de los valores seleccionados.
    - `MIN` Devuelve el valor mínimo de los valores seleccionados.
    - `MAX` Devuelve el valor máximo de los valores seleccionados.
---
_**NOTA:** Los VERBOS, CLÁUSULAS, OPERADORES Y/O palabras reservadas de `SQL` van en mayúsculas, de resto tratar siempre de que las columnas y las definiciones estes en minusculas. Sólo cuando vas a ingresar un valor entre comillas simples es indiferente el formato._
---
### **Sentencias `SQL`**:
1. #### OBTENER (GET / SELECT):
    ``` plaintext
    VERBO + (columna(s)) + DE DONDE tabla + CONDICION columna = valor;
    ```
    ``` sql
    SELECT (id o *) FROM users WHERE id = 28;
    ```
---
2. #### REGISTRAR (POST / INSERT INTO):
    ``` plaintext
    VERBO + tabla + (columna(s)) + VALORES (en, el, mismo, orden, las, columnas);
    ```
    ``` sql
    INSERT INTO users (full_name, email, phone, address) VALUE ('nombre y apellido', 'correo@ejemplo.com', 'telefono', 'direccion');
    ```
---
3. #### ACTUALIZAR (PUT / UPDATE):
    ``` plaintext
    VERBO + tabla + VERBO_2 + columna = 'nuevo valor' + CONDICION columna (=/LIKE) valor;
    ```
    ``` sql
    UPDATE users SET full_name = 'Timbiriche' WHERE full_name LIKE '%equis cosa%';
    ```
---
4. #### ELIMINAR (DELETE):
    ``` plaintext
    VERBO + tabla + CONDICION valor;
    ```
    ``` sql
    DELETE FROM users WHERE full_name LIKE '%equis cosa%';
    ```
---
5. #### INNER JOIN:
    - Unión simple:
        ``` plaintext
        VERBO + columnas_de_tablas + VERBO_2 + tabla_1 + VERBO_3 + tabla_2 + VERBO_4 + asignar_valor_de_las_relaciones
        ```
        ``` sql
        SELECT columnas_de_tabla_1, columnas_de_tabla_2 FROM tabla_1 INNER JOIN tabla_2 ON tabla_1.columna = tabla_2.columna;
        ```
    - Unión multiple:
        ``` plaintext
        VERBO + columnas_de_tablas + VERBO_2 + tabla_1 + VERBO_3 + tabla_2 + VERBO_4 + asignar_valor_de_las_relaciones + VERBO_3 + tabla_2 + VERBO_4 + asignar_valor_de_las_relaciones + VERBO_5 + CONDICION;
        ```
        ``` sql
        SELECT columnas_de_tabla_1, columnas_de_tabla_2, columnas_de_tabla_3 FROM tabla_1 INNER JOIN tabla_2 ON tabla_1.columna_1 = tabla_2.columna_1 INNER JOIN tabla_3 ON tabla_2.columna_2 = tabla_3.columna_2 WHERE condicion;
        ```
---
## Pasos para crear la base de datos
1. ### **Crear la base de datos**:
    ``` sql
    CREATE DATABASE nombre_en_snake_case_y_minusculas;
    ```
---
2. ### **Seleccionar la base de datos a trabajar**:
    ``` sql
    USE nombre_en_snake_case_y_minusculas;
    ```
---
3. ### **Crear tabla**:
    ``` sql
    CREATE TABLE IF NOT EXISTS nombre_en_snake_case_y_minusculas (
        id INT(6) AUTO_INCREMENT PRIMARY KEY,
        texto VARCHAR(255),
        verdadero_o_falso BOOLEAN,
        fecha_y_hora DATETIME,
        moneda DECIMAL(10,2)
    );
    ```
---


