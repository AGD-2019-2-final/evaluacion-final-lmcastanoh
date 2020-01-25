-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` Calcule la cantidad de registros por clave de la 
-- columna 3. En otras palabras, cuántos registros hay que tengan la clave 
-- `aaa`?
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

data = LOAD 'data.tsv' USING PigStorage('\t') AS (primer:CHARARRAY, segundo:BAG{tup:TUPLE(letter:CHARARRAY)}, tercero:MAP[]);

data_2 = FOREACH data GENERATE FLATTEN(tercero) AS tercero;

conteo = GROUP data_2 BY tercero;

--grouped = GROUP letters BY letter;

wordcount = FOREACH conteo GENERATE group, COUNT($1);

STORE wordcount INTO 'output' USING PigStorage (',');