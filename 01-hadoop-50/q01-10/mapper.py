import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":

    ##
    ## itera sobre cada linea de codigo recibida
    ## a traves del flujo de entrada
    ##
    for line in sys.stdin:
        #Se obtiene la segunda posición (acá se cuenta desde 0)
        segundaColumna=line.split(',')[2]
        
        #Se imprime la segunda ocurrencia por cada línes
        sys.stdout.write("{}\t1\n".format(segundaColumna))