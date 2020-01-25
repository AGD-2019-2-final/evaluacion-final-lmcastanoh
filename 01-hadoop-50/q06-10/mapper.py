import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == "__main__":
    for line in sys.stdin:
        primera=line.split("   ")[0]
        segunda=line.split("   ")[2]
        segunda=float(segunda)
        sys.stdout.write("{}\t{}\n".format(primera,segunda))