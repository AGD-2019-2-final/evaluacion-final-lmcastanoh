import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#

if __name__ == "__main__":
    for line in sys.stdin:
        primera=line.split("   ")[0]
        segunda=line.split("   ")[2]
        tercera=line.split("   ")[1]
        #segunda=int(segunda)
        segunda=segunda.strip()
        
        if len(str(segunda))==1:
            segunda="00"+segunda
            
        if len(str(segunda))==2:
            segunda="0"+segunda
        
        sys.stdout.write("{}\t{}\t{}\t{}\n".format(primera+str(segunda),primera,tercera,segunda))