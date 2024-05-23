# Autómata Celular Unidimensional

El autómata celular unidimensional es un modelo matemático y computacional que simula el comportamiento de un sistema dinámico discreto en una dimensión. Consiste en una fila unidimensional de células, donde cada célula puede estar en un estado específico en cada paso de tiempo.

## Funcionamiento del Autómata Celular

En este caso, el autómata celular implementado en CLISP funciona de la siguiente manera:

1. **Inicialización**: Se crea una fila de células con un estado inicial específico.

2. **Actualización**: En cada paso de tiempo, se actualiza el estado de cada célula en función de su estado actual y el estado de sus vecinos.

3. **Reglas de Transición**: Las reglas de transición determinan cómo cambia el estado de una célula en función del estado de ella misma y de sus vecinos. Estas reglas pueden variar según el problema que se esté abordando.

4. **Iteración**: El proceso de actualización se repite para múltiples pasos de tiempo, lo que permite observar la evolución del sistema a lo largo del tiempo.

## Vecindad en el Autómata Celular

En un autómata celular unidimensional, la vecindad se refiere al conjunto de células que rodean a una célula específica en una estructura unidimensional. En este caso, utilizamos una vecindad de 3 vecinos para cada célula, donde cada célula tiene un vecino a la izquierda y otro a la derecha.

### Ejemplo Práctico de Vecindad

Supongamos que tenemos una fila de células con los siguientes estados:

```
Estado Actual: 1 0 1 0 1 0 1
```

Consideremos la célula en la posición central (tercera célula) con estado 1. Su vecindad de 3 vecinos sería:

```
Vecindad: 0 1 0
```

En este ejemplo, la célula central tiene un vecino a la izquierda con estado 0 y un vecino a la derecha con estado 0.

Las reglas de transición se aplican considerando el estado de la célula actual y el estado de sus vecinos inmediatos. Esta vecindad limitada de 3 vecinos simplifica el cálculo de las transiciones y la implementación del autómata.

## Implementación sin Bucles

La implementación del autómata celular en CLISP se realiza sin bucles utilizando recursión y funciones de orden superior. Esto permite aplicar las reglas de transición de manera eficiente y concisa, evitando el uso de estructuras de control iterativas como los bucles. El enfoque funcional de CLISP se presta bien para este tipo de implementaciones, donde las operaciones se aplican a estructuras de datos de manera recursiva.

## Requisitos

Para ejecutar el código del autómata celular en CLISP, solo necesitas tener instalado un intérprete de Lisp en tu sistema. Puedes utilizar CLISP, SBCL u otro intérprete compatible con Lisp. Puedes encontrar instrucciones de instalación en la documentación oficial de cada intérprete.

### Ejemplo de Uso

Un ejemplo de uso del autómata celular en CLISP sería:

```lisp
(automata-celular '(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 30 30)
```

Este código generará un autómata celular utilizando la regla 30 y una fila inicial de células. Se ejecutará durante 30 pasos de tiempo, mostrando un total de 30 filas en la salida.

- El primer parámetro `(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0)` es la fila inicial de células, donde cada 0 representa una célula muerta y cada 1 representa una célula viva.

- El segundo parámetro `30` indica la regla que se aplica al autómata celular. En este caso, se utiliza la regla 30.

- El tercer parámetro `30` especifica el número de filas que se mostrarán en la salida.




### Ejemplo de Uso 2

Un ejemplo de uso del autómata celular en CLISP sería:

```lisp
(automata-celular '(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 150 100)
```

Este código generará un autómata celular utilizando la regla 30 y una fila inicial de células. Se ejecutará durante 30 pasos de tiempo, mostrando un total de 30 filas en la salida.

- El primer parámetro `(automata-celular '(0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 1 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0) 150 100)
` es la fila inicial de células, donde cada 0 representa una célula muerta y cada 1 representa una célula viva.

- El segundo parámetro `150` indica la regla que se aplica al autómata celular. En este caso, se utiliza la regla 150.

- El tercer parámetro `150` especifica el número de filas que se mostrarán en la salida.



