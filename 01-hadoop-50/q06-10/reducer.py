import sys
#
# >>> Escriba el codigo del mapper a partir de este punto <<<
#
if __name__ == '__main__':

    curkey = None
    valor1 = None
    valor2 = None

    for line in sys.stdin:

        key, val = line.split("\t")
        val = float(val)
        
        if valor1  is None:
          valor1 = val
          valor2 = val

        if key == curkey:

            valor1 = max(valor1, val)
            valor2 = min(valor2, val)
            
        else:

            if curkey is not None:
                sys.stdout.write("{}\t{}\t{}\n".format(curkey, valor1, valor2))

            curkey = key
            valor1 = val
            valor2 = val 
            
    sys.stdout.write("{}\t{}\t{}\n".format(curkey, valor1, valor2))