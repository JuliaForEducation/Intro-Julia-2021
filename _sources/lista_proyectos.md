# Opciones proyectos segunda semana
Como actividad de proyecto de la segunda semana, se tiene la libertad de elegir cualquier campo del conocimiento, no obstante, a continuación sugerimos algunos proyectos bosquejados, los cuales seremos capaces de darle un seguimiento asistencia, y que además ilustran la estructura general de tareas a realizar. Se enlistan a continuación

## Ciencias de datos
El área de ciencias de datos, ampliamente popularizada en los años recientes, consiste en un flujo completo desde el diseñó de experimentos necesarios para la obtención de datos relevantes a un estudio o propósito, su obtención, limpieza, exploración y análisis, hasta incluir modelos sofisticados auxiliados por estadística, probabilidad, y matemática difusa, comúnmente conocidos en el contexto como inteligencia artificial.

El proyecto en ciencias de datos consiste en tener la experiencia por las etapas posibles de ese flujo. Específicamente, a continuación se describen los pasos a realizar:

1. **Encontrar datos:** Se debe encontrar una base de datos (colección de observaciones o "filas" que consistan de al menos dos variables o "columnas") tal que cumpla los siguientes criterios:
   - La base de datos tiene al menos una variable cuantitativa que pueda contrastarse con una segunda variable que puede también ser cuantitativa (en dicho caso podría ser un problema/estudio de correlación o predicción) o cualitativa (en dicho caso sería de categorización o de predicción categórica).
     Existe además un tercer caso posible si se entiende una de las variables como un progreso temporal en algún sentido (ya sea el tiempo mismo o algún evento periódico respecto del cual se está analizando algún otro observable). En dicho caso, se entiende el estudio como una serie de tiempo. Estos tres casos determinan el tipo de base de datos a elegir, y cabe recalcar que pueden estar presentes todos en una misma base datos
   - Que tengamos suficientes observaciones para que las conclusiones puedan tener esperanza de representar a la realidad y contrastarle. Este número es en principio dependiente del fenómeno que subyace las observaciones, pero podemos estandarizar como aceptable algo mayor a 30 observaciones.
2. **Limpieza de base de datos**: Para la limpieza, uno necesita tener claro el objetivo del estudio que usualmente es en forma de una pregunta, hipótesis o problema a estudiar. una vez determinado el propósito, se debe pensar en la forma ideal de nuestros datos (es decir, la forma de la tabla que contiene los datos) que nos permita, con la menor cantidad de trasnformaciones de columnas y filas, lograr el propósito.
3. **Análisis central**: Éste puede ser de índole explorativo, lógico, estadístico y modelativo (como "tipos" ideales, pues en la práctica resultamos realizar una combinación de ellos). Aquí una breve discusión de ellos:
   - **Explorativo**: Es uno que nos permite indagar en la estrutura relacional de las variables presentes, usualmente mediante gráficos (aunque también es posible combinarse con tests estadísticos o condicionales lógicos). Esta clase de análisis se caracteriza por utilizar criterios de variables categóricas o rangos de variables cuantitativas para filtrar la data utilizando dataframes.
   - **Lógico**: Este tipo de análisis de consiste en capturar un subconjunto de nuestros datos que representa una definición de algún sub-fenómeno de nuestro estudio. Es decir, si los datos provienen de alguna medición a un fenómeno, este fenómeno puede estarse estudiando para ilustrar casos (estados de la materia, comportamientos dinámicos específicos, categorías latentes, etc.) y para ello, se realiza un filtrado basado solamente en condiciones lógicas que sabemos que deben cumplirse para corresponder a esos sub-fenómenos o sub-estados.
   - **Estadístico**: Utiliza probabilidad y estadística para realizar ajustes de datos (regresión), pronósticos estocásticos (modelos de series de tiempo), tests de significancia (ej. ¿Es el efecto del tratamiento A significativamente diferente al efecto del tratamiento B? ¿O es solo una diferencia por casualidad?)
   - **Modelativo**: Utilizar los datos para alimentar un modelo mayor, usualmente en un contexto de inteligenciaartificial general o modelo dinámico.
4. **Conclusiones**: Interpretar los resultados, independientemente si corresponden a la hipótesis inicialmente planteada.


## Ecuaciones diferenciales
El proyecto de modelamiento consiste en plantear y resolver un modelo basado en ecuaciones diferenciales siguiendo las siguientes etapas:
  1. **Modelo determinista**: Se especifica el método utilizado y se explica porqué tiene sentido en el contexto del tipo de ecuación que presenta el problema.
  2. **Modelo estocástico:** Agregarle una componente estocástica para modelar una situación más apegada a la realidad o una modificación del fenómeno que ustedes pueden proponer.
  3. **Refinación adicional:** Para enriquecer las aplicaciones de su modelo, se propone introducir una de las dos siguientes:
     - Un elemento de delay (retraso): Es decir, hipotetizar que alguna variable del modelo (ya sea explícita o latente) tiene cierto retraso de acción luego de ser estimulada. (ej. la luz propagándose en electromagnetismo).
     - Un elemento condicional lógico: Utilizar alguna condición para afectar el sistema cuando cierto parámetro o variable observable llegue a poseer ciertas características, es decir, utilizar teoría de control. Un ejemplo sería una propagación de calor que es controlada tras alcanzar cierto valor muy cercano a un valor crítico.

Cada etapa debe ser explicada por un lado teórico que justifique los métodos utilizados e interprete tanto las ecuaciones, sus términos y los resultados obtenidos. Además deben incluir gráficas de las soluciones.

## Procesamiento del lenguaje natural
El proyecto de procesamiento del lenguaje natural (referido como NLP a partir de ahora, por sus siglas en inglés) busca ilustrar las capacidades de realizar procesamiento de texto utilizando ecosistemas ya existentes en Julia. Estos combinan la elegancia de escritura de código de Julia junto con el alto rendimiento para ser capaces de realizar análisis a gran escala.

Esto se hará con el paquete `TextAnalysis`, el cual podría para algunas aplicaciones extenderse por `TextModels`. Se debe utilizar algún archivo de texto con tamaño no trivial (más de algún par de párrafos) y partir de allí para realizar los siguientes pasos:
- Cargar el archivo en las estructuras nativas de `TextAnalysis`, procurando que la metadata sea descriptiva.
- Realizar análisis descriptivos como frecuencia y ubicación de términos (posible con un léxicon o con la [matriz de términos del documento](https://datacadamia.com/natural_language/term_document)).
- Hacer algún análisis intermedio:
  1. Sentiment Analysis
  2. Named Entity Recnognition
  3. Latent Semantic Analysis
  4. Clasificador basado en Naive Bayes
  5. Latent Dirichlet Allocation
  6. etc.

## Álgebra lineal numérica
El proyecto puede tomar dos vías posibles:
- Implementación de un algoritmo clásico o variante especial que esté ya implementado en el paquete de `LinearAlgebra` de la base de Julia para comparación.
- Aplicación de los algoritmos de álgebra lineal numérica ya implementados en Julia. Esto puede ser cualquiera que consista en resolver sistemas de ecuaciones y emerja de la naturaleza, tecnología, sistemas sociales, etc.

### Algoritmo clásico
Algunas ideas de algoritmos clásicos a considerar son:
- [Factorización de Bunch-Kaufman](https://apps.dtic.mil/dtic/tr/fulltext/u2/a211415.pdf)
- [Factorización de Cholesky](https://en.wikipedia.org/wiki/Cholesky_decomposition)
- [Factorización LU](https://en.wikipedia.org/wiki/LU_decomposition)
- [Factorización QR](https://en.wikipedia.org/wiki/QR_decomposition)
- [Factorización de Hessenberg](http://mathworld.wolfram.com/HessenbergDecomposition.html)
- [Factorización espectral](https://en.wikipedia.org/wiki/Eigendecomposition_of_a_matrix)
- [Descomposición de valores singulares (SVD)](https://en.wikipedia.org/wiki/Singular_value_decomposition)
- [Descomposición de Schur](https://en.wikipedia.org/wiki/Schur_decomposition)

Además, se pueden considerar variantes que igualmente estén implementadas en Julia para comparación:
- [Factorización LDLt](https://en.wikipedia.org/wiki/Cholesky_decomposition#LDL_decomposition)
- [Factorización Pivoteada de Cholesky o QR](https://en.wikipedia.org/wiki/Pivot_element)
- Versiones generalizadas de la [descomposición espectral](https://en.wikipedia.org/wiki/Eigendecomposition_of_a_matrix#Generalized_eigenvalue_problem), [SVD](https://en.wikipedia.org/wiki/Generalized_singular_value_decomposition#Higher_order_version), [descomposición de Shur](https://en.wikipedia.org/wiki/Schur_decomposition#Generalized_Schur_decomposition)
El proyecto consiste en las siguientes etapas:
- Implementación manual del algoritmo selecto de la lista de arriba, la cual no puede utilizar las implementaciones arriba mencionadas, integrada  en `LinearAlgebra` pero sí sus demás funciones.
- Comparación de rendimiento respecto a la implementación integrada basándose en memoria, velocidad de ejecución y funcionamiento correcto de casos (¿Funciona para todos los tipos de matrices para las cuales se espera funcionar? ¿Cómo se maneja el caso de matrices no funcionales?]
- Comentarios finales de comparación y resultados.

### Aplicaciones
Cuenta como aplicación cualquier uso de algoritmos mencionados en la sección anterior o algoritmos adicionales que puedan ser construidos a partir de estos en el contexto de un problema en otra área diferente al álgebra lineal numérica. Estas podrían ser:
- Métodos de elemento o volumen finito
- Resolución de sistemas grandes de ecuaciones lineales
- Análisis matricial
- Aplicaciones fenomenológica: Circuitos, estequiometría, finanzas, etc.
- Teoría algebraica de grafos
- Optimización (ej. método simplex)

La lista anterior **no** es exhaustiva. Las etapas a realizar serían:
- Planteamiento de la aplicación y explicación del rol del álgebra lineal numérica en ella
- Resolución base de un caso de dicha aplicación
- Resolución con algún método alterno (que podría ser también de álgebra lineal numérica) para fines comparativos
- Comentarios finales de comparación y conclusiones.

## Desarrollo web
El proyecto de desarrollo web consiste en utilizar lo aprendido de REST APIs para aplicarlo en un contexto práctico. Esto puede ser desde métodos mediante HTTP descritos abajo para interactuar con data local, hasta funcionalidades completas de una página web con HTML y CSS (no obligatorio) con estructura de base de datos más elaborada. El bosquejo general de lo que se desea es:
- Crear rutas básicas que respondan a uno o múltiples argumentos que sean números o strings
- Crear rutas que acepten parámetros compuestos como arreglos o números complejos
- Implementación de distintos tipos de protocólos (GET, POSt, etc.)
- challenge: utilizar dicho backend para una página completa.

Algunas propuestas de tópicos son:
1. **Intercambio de moneda:** Implementar métodos para:
    - Obtener tasas de intercambio de alguna moneda (GET)
    - Ingresar cantidad de alguna monedad y devolver el equivalente en otra (POST)
    - Modificación de tasas mediante PUT o DELETE
    - etc. (Agregar cualquiér otro método de request en el contexto adecuado)
2. **Base de datos básica de usuarios y credenciales:**
    - Ingreso de usuarios con campos caracteristicos (podría dársele un contexto donde tenga sentido pedirles su nombre, edad, nivel de educación, etc.) mediante PUT o POST
    - Solicitud de estadísticas del estado actual de la base de datos (GET)
    - Manejo de cookies para uso de credenciales con expiración apropiada
