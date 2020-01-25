import sys
#
# >>> Escriba el codigo del reducer a partir de este punto <<<
#
if __name__ == "__main__":

  for line in sys.stdin:
      line = line.strip()
      splits = line.split(",")
      letra = splits[0]
      numero = splits[1]
      sys.stdout.write("{},{}\n".format(numero,letra))
