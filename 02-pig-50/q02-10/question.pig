-- Pregunta
-- ===========================================================================
-- 
-- Ordene el archivo `data.tsv`  por letra y valor (3ra columna).
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
-- 
--  >>> Escriba el codigo del mapper a partir de este punto <<<
-- 

data = LOAD 'data.tsv' AS (letter:CHARARRAY, date:CHARARRAY, number:INT);

--data2 = FOREACH data GENERATE letter;

ordenar = ORDER data BY $0,$2;

--grouped = GROUP letters BY letter;

--wordcount = FOREACH grouped GENERATE group, COUNT(letters);

STORE ordenar INTO 'output';


