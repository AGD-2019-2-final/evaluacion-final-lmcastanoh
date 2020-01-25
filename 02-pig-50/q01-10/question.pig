-- 
-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` compute la cantidad de registros por letra. 
-- Escriba el resultado a la carpeta `output` del directorio actual.
--
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
datos = LOAD 'data.tsv' AS (letra:CHARARRAY,fecha:CHARARRAY, numero:INT);

letras = FOREACH datos GENERATE letra;

groupito = GROUP letras BY letra;

conteo = FOREACH groupito GENERATE group, COUNT(letras);

STORE conteo INTO 'output';