-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute Calcule la cantidad de registros en que 
-- aparece cada letra minúscula en la columna 2.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

data = LOAD 'data.tsv' USING PigStorage('\t') AS (primer:CHARARRAY, segundo:BAG{tup:TUPLE(letter:CHARARRAY)}, tercero:CHARARRAY);

data_2 = FOREACH data GENERATE FLATTEN(segundo) AS segundo;

conteo = GROUP data_2 BY segundo;

--grouped = GROUP letters BY letter;

wordcount = FOREACH conteo GENERATE group, COUNT($1);

STORE wordcount INTO 'output';