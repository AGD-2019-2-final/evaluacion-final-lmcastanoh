import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':
    
    linea=1

    for line in sys.stdin:
        if linea<7:
            tercera=line.split("\t")[0]
            segunda=line.split("\t")[1]
            primera=line.split("\t")[2]
            tercera=int(tercera)
            sys.stdout.write("{}\t{}\t{}\n".format(primera,segunda,int(tercera)))
            linea=linea+1
            #sys.stdout.write("{}\n".format(line))

    