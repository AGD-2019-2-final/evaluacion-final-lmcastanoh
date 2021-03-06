-- Pregunta
-- ===========================================================================
-- 
-- Para el archivo `data.tsv` genere una tabla que contenga la primera columna,
-- la cantidad de elementos en la columna 2 y la cantidad de elementos en la 
-- columna 3 separados por coma. La tabla debe estar ordenada por las 
-- columnas 1, 2 y 3.
-- 
-- Escriba el resultado a la carpeta `output` del directorio actual.
-- 
fs -rm -f -r output;
--
-- >>> Escriba su respuesta a partir de este punto <<<
--
data = LOAD 'data.tsv' USING PigStorage('\t') AS (primer:CHARARRAY, segundo:BAG{tup:TUPLE(letter:CHARARRAY)}, tercero:MAP[]);

data_2 = FOREACH data GENERATE primer,COUNT($1),SIZE($2);
ordenar = ORDER data_2 BY $0,$1,$2;
--data_2 = FOREACH data GENERATE FLATTEN(tercero) AS tercero;

--conteo = GROUP data_2 BY tercero;

STORE ordenar INTO 'output' USING PigStorage (',');