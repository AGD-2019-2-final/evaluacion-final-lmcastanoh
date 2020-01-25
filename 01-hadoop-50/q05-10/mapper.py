import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == "__main__":
    for line in sys.stdin:
        segunda=line.split("   ")[1]
        mes=segunda.split("-")[1]
        #segunda=line.split("   ")[2]
        #segunda=int(segunda)
        sys.stdout.write("{}\t1\n".format(mes))