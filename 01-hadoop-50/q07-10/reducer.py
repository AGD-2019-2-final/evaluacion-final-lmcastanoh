import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':

    for line in sys.stdin:
        primera=line.split("\t")[1]
        segunda=line.split("\t")[2]
        tercera=line.split("\t")[3]
        sys.stdout.write("{}   {}   {}\n".format(primera,segunda, int(tercera)))
        #sys.stdout.write("{}\n".format(line))