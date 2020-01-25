-- Pregunta
-- ===========================================================================
-- 
-- Obtenga los cinco (5) valores más pequeños de la 3ra columna.
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
data = LOAD 'data.tsv' AS (letter:CHARARRAY, date:CHARARRAY, number:INT);


primeros = FOREACH data GENERATE number;

ordenar = ORDER primeros BY $0;

limite= LIMIT ordenar 5;

--grouped = GROUP letters BY letter;

--wordcount = FOREACH grouped GENERATE group, COUNT(letters);

STORE limite INTO 'output';
