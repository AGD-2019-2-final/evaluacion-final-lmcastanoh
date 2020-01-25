import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == "__main__":
    for line in sys.stdin:
        primera=line.split("   ")[0]
        segunda=line.split("   ")[1]
        tercera=line.split("   ")[2]
        tercera=tercera.strip()
        primera=primera.strip()
        segunda=segunda.strip()
        if len(tercera)==1:
            tercera="00"+tercera
        if len(tercera)==2:
            tercera="0"+tercera
        #tercera=int(tercera)
        sys.stdout.write("{}\t{}\t{}\n".format(tercera,segunda, primera))