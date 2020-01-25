import sys
#
#  >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':

    curkey = None
    suma1 = 0
    suma2 =0
    conteo = None

    for line in sys.stdin:
        key,sum1,sum2 = line.split("\t")
        total=0
        sum1=float(sum1)
        sum2=float(sum2)
        #val2=float(val2)
        #total = int(total)

        if suma1  is None:
            suma1 = sum1
            suma2 = sum2
            total = 0
    
        if key==curkey:
            
            suma1=suma1+sum1
            suma2=suma2+sum2
            #sys.stdout.write("{}\n".format(key))
            #total=total+1
        else:

            if curkey is not None:
               # if conteo !=0:
                
                sys.stdout.write("{}\t{}\t{}\n".format(curkey, suma1, suma1/suma2))
                
            
            curkey=key
            suma1 = sum1
            suma2 = sum2
            #total = total+1
            
    sys.stdout.write("{}\t{}\t{}\n".format(curkey,suma1,  suma1/suma2))
        
        