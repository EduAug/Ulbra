#import math
#print("Factorial : ", end="")
#print(math.factorial(3))

def factor(n):
    if n == 0:
        return 1
        # "freia" o loop de recursividade ao chegar em 0
    else:
        return n * factor(n-1)
        #chamar si com valor de entrada reduzido
print(
    factor(
        int(input("Insira um valor para fazer o fatorial: "))
        )
    )