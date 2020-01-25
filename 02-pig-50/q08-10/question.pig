-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra de la 
-- columna 2 y clave de al columna 3; esto es, por ejemplo, la cantidad de 
-- registros en tienen la letra `b` en la columna 2 y la clave `jjj` en la 
-- columna 3 es:
-- 
--   ((b,jjj), 216)
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--

data = LOAD 'data.tsv' USING PigStorage('\t') AS (primer:CHARARRAY, segundo:BAG{tup:TUPLE(letter:CHARARRAY)}, tercero:MAP[]);

data = FOREACH data GENERATE FLATTEN(segundo),FLATTEN(tercero);

data = GROUP data BY ($0,$1);

data = FOREACH data GENERATE group , COUNT($1);

STORE data INTO 'output';