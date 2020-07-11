# RedNeuronalCrimenEconomia
<h1>Análisis para la elaboración de red neuronal predictiva relacionado en el aumento del crimen con relación a los efectos económicos en la ciudad de México.</h1>



<b>Integrantes:</b>
<ul>
  <li>Baltazar Miguel Dulce Samantha</li>
  <li>Hernández Aguilar Iván</li>
</ul>
<b>Asesores:</b>
  <ul>
    <li>Mtro. Jaime Gómez Minor</li>
    <li>Act. Arturo Lopez Sanchez</li>
    <li>Ing. Juan Ángel Calvillo Pérez</li>
  </ul>


<h2>Planteamiento del problema.</h2>

<p>En la ciudad de México podemos observar que el crimen ha ido en aumento en los últimos años según datos del Instituto Nacional de Estadística y Geografía (INEGI,2018), simplemente en el periodo de 2014 a 2018 se denunciaron en promedio por cada 100,000 habitantes 60,169.2 crímenes, habiendo un aumento aproximado del 29.53% con relación al periodo de 2010 a 2013, si bien es posible desarrollar una relación lineal entre los crímenes cometidos en el lapso 2010 a 2018 y con ello determinar los crímenes esperados para el año 2019 es importante también conocer los factores que pueden llegar a motivar la actividad delictiva en la ciudad.</p>

<p>Uno de los mayores efectos del crimen además de su impacto social es el impacto económico que estos generan, solamente para el año corriente (2019) se aprobó a nivel nacional un presupuesto de 144,809.7 mdp como se menciona en el artículo Recursos destinados a Seguridad Pública en el Presupuesto de Egresos de la Federación 2019 (“Recursos destinados a Seguridad Pública en el presupuesto de egresos de la Federación 2019”, Morales Cisneros Gabriela, 2019) siendo el equivalente al 3.5% del presupuesto total de egresos de la federación (de los 4,147,422.7 mdp presupuestados para egresos de la federación), sin embargo aunque la cifra parezca demasiado extensa hay que recordar que es el presupuesto para todo el país, si se hiciera una repartición equitativa del presupuesto a cada uno  de los 31 estados se quedaría con un ingreso aproximado de 4,671.28 mdp orientado al gasto en seguridad pública.</p>

<p>A nivel nacional en el 2018 el costo por todos los delitos cometidos equivalen al 1.5% del PIB (“Delincuencia costó 286 mil mdp en 2018: INEGI”, David Vicenteño, 24/09/2019), por ende surge la necesidad de encontrar que factores económicos son los que afectan al efecto criminalístico, esto con el fin de entender de forma definitiva hasta qué punto afectan las decisiones económicas al acto delictivo.</p>

<p>Uno de los ejemplos clásicos cuando se habla de la relación de crimen y economía es citar el trabajo de Garry S. Becker (Crimen y castigo: un enfoque económico, Gary S. Becker and William M. Landes, eds., NBER, 1974) sin embargo es prácticamente imposible adaptar el modelo propuesto en dicho trabajo a los efectos que ocurren en la ciudad de México por dos razones, la primera es que dicho trabajo tiene más de 40 años desde que fue postulado y la segunda es que la economía así como el crimen ha ido evolucionando, eso sin contar las diferencias entre la economía norteamericana de los años 70 o anterior y la economía de la ciudad de México.</p>

<p>En México la forma de obtener indicadores criminalísticos no ha cambiado desde hace décadas (Secretariado Ejecutivo del Sistema Nacional de Seguridad Pública, 1997-2017), siendo obtenidas por  datos que salen desde los ministerios públicos (MP) o bien por la procuraduría general de justicia del estado, sin embargo es por dicha razón que los datos mostrados en los documentos oficiales no están desligados al error humano, es por ello que la posibilidad de generar una proyección futura realista se ve disminuida, de igual manera en México no se denuncian cerca del 93.2% del total de crímenes (“Cifra Negra: en México no se denuncia el 93.2% de los delitos”, Pedro L., 26/09/2018)</p>

<p>Por otra parte la economía está ligada de forma directa a la cantidad de crímenes cometidos por ejemplo, en el año 2007 en la ciudad de México hubo un total de 162,548 (“Incidencia delictiva del fuero común en 2007”, Procuraduría General de la República [PGR], Junio 2012) crímenes denunciados, mientras que para el año 2008 hubo un total de 172,721 (“Incidencia delictiva del fuero común en 2008”, Procuraduría General de la República [PGR], Octubre 2012) significando un aumento aproximado al 6.25%, de igual manera si vemos los datos del año 2009 (“Incidencia delictiva del fuero común en 2009”, Procuraduría General de la República [PGR], Junio 2012) veremos un aumento aproximado del 15.84% con relación a las cifras oficiales del 2007, ahora, la importancia de los años citados anteriormente es que en el año 2008 el mundo pasó por una crisis económica, dejando rezagos del tipo social y económico para los años posteriores.</p>

<p>La relación entre crimen y economía ha dado resultados que se prestan a la interpretación o bien están localizados en diversos modelos económicos, políticos y/o sociales ajenos a la Ciudad de México, lo cual dificulta la implementación de las postulaciones. Es por ello que haciendo uso de las redes neuronales y modelos matemáticos se puede llegar a la relación entre crimen y economía en la ciudad de México, implementando tecnologías como lo son análisis y ciencia de datos es posible llegar a una relación tangible y matemáticamente comprobable del como la economía y el crimen son dos conceptos distintos pero relacionados, mientras que haciendo uso de redes neuronales se puede llegar a la predicción de posibles escenarios en un lapso de tiempo delimitado.</p>

<h2>Objetivo General.</h2>

<p>Generar el análisis para la interpretación de datos orientado a una red neuronal encargada de predecir el índice delictivo en periodos anuales, considerando los efectos microeconómicos y macroeconómicos en la ciudad de México, alcanzando un nivel de entendimiento de la relación entre crimen y economía con la ayuda de un modelo matemático.</p>

<h2>Objetivos Específicos.</h2>
<ul>
<li>Identificar los datos criminológicos en el periodo de 1997 a 2017 en la ciudad de México (CDMX antes DF), para con ello segmentar los datos obtenidos por tipo de crimen y por periodicidad.</li>
<li>Identificar los diversos factores económicos aplicados y procedentes de la ciudad de México en el periodo de 1997 a 2017, logrando con ello el maquetado de las tendencias económicas así como identificar las carencias y virtudes de los modelos económicos propuestos.</li>
<li>Unificar los datos en dataset para mejorar el análisis conceptual de los datos. </li>
<li>Identificar los factores de relación entre el crimen y economía a nivel matemático,  haciendo uso de los datos adquiridos con anterioridad y preparando los dataset.</li>
<li>Generar modelo matemático que ligue de forma definitiva la relación entre los datos económicos recabados así como los datos criminalísticos de la ciudad de México en el periodo de 1997 a 2017. </li>
<li>Modelar red neuronal, considerando las tendencias en uso de redes neuronales, se deberá encontrar la estructura que más se adapte a las necesidades de predicción.</li>
</ul>

<h2>Justificación.</h2>
 
<p>Surge la necesidad de generar un modelo matemático que unifique la relación de ambos conceptos crimen y economía, esto apoyado de una red neuronal orientada a la predicción de datos y su futura implementación en el ámbito económico, gubernamental, tecnológico y estudiantil.</p>

<p>La elaboración de este proyecto se da por que en México el uso de redes neuronales para la comprensión de fenómenos que afectan a la sociedad mexicana no ha tenido un avance importante, si bien se hace uso de big data para el análisis de tendencias, no hay un estudio en la ciudad de méxico que ligue los impactos del crimen en la economía haciendo uso de redes neuronales.</p>

<p>Esto traerá consigo muchos beneficios, por una parte al dejar la investigación abierta a todo público podrá ser retomada por estudiantes e investigadores con lo cual podrá ser escalada a puntos a los cuales no se tiene planeado llegar por cuestiones de tiempo, por otra parte el modelo de integración entre crimen y economía funge como intermediario entre los datos crudos y una interpretación matemática ayudando a mejorar el entendimiento de la relación crimen económica, mientras que la red neuronal facilita el trabajo de aplicación en la proyección de indicadores criminológicos.</p>

<p>Para finalizar, el desarrollo de este proyecto se da para poder ser implementado en ámbitos gubernamentales y tecnológicos, con los cuales se deja un antecedente del cómo ligar dos conceptos que parecieran no estar relacionados de forma directa.</p>
