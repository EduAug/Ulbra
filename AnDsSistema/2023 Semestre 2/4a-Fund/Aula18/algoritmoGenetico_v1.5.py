import random
import math

class Person:
    def __init__(self,p1,p2,e1,e2):
        self.Peso1 = p1
        self.Peso2 = p2
        self.Entrada1 = e1
        self.Entrada2 = e2
        
    def __str__(self):
        return f"Peso 1: {self.Peso1} | Peso 2: {self.Peso2} | Entrada 1: {self.Entrada1} | Entrada2: {self.Entrada2}"
        
def gen_val():
    return round(random.randint(0,10)*0.1,1)

def gen_pers():
    return Person(gen_val(),gen_val(),gen_val(),gen_val())

def gen_pop(mtrx, size):
    for i in range(size):
        mtrx.append(gen_pers())

def filtro(mtrx):
    for i in mtrx:
        if (i.Peso1*i.Entrada1)+(i.Peso2*i.Entrada2) < abs((i.Peso1+i.Peso2)*0.6):
            #print("Bad:",i)
            mtrx.remove(i)

def mutate(mtrx):
    for mutant in mtrx:
        gene = random.randint(1,4)
        #print("Before:",mutant)
        if gene == 1:
            mutant.Peso1 = mutant.Peso1 + (random.randint(-10,10))
        elif gene == 2:
            mutant.Peso2 = mutant.Peso2 + (random.randint(-10,10))
        elif gene == 3:
            mutant.Entrada1 = mutant.Entrada1 + (random.randint(-10,10))
        elif gene == 4:
            mutant.Entrada2 = mutant.Entrada2 + (random.randint(-10,10))
        else:
            break
        #print("After:",mutant)
    return mtrx

def crossover(mtrx):
    limit = len(mtrx)
    nextGen = []
    i = 0
    while i < limit:
        try:
            father = mtrx[i]
            i+=1
            mother = mtrx[i]
            
            firstKid = Person(
                mother.Peso1 + 1,
                father.Peso2,
                mother.Entrada1 + 1,
                father.Entrada2
            );
            secondKid = Person(
                father.Peso1 + 1,
                mother.Peso2,
                father.Entrada1 + 1,
                mother.Entrada2
            );

            nextGen.append(firstKid)
            nextGen.append(secondKid)
            i+=1
        except IndexError:
            break
    
    return nextGen

def nat_select(mtrx):
    half = len(mtrx)//2
    #print(half)
    if (half % 2 == 0):
        mutated = mtrx[half:]
        crossed = mtrx[:half]
    else:
        mutated = mtrx[:half]
        crossed = mtrx[half:]
    
    crossed = crossover(crossed)
    mutated = mutate(mutated)
    
    for i in crossed:
        mtrx.append(i)

def cleansing(mtrx, xcd):    #Ordena de forma crescente os "valores". Usar quando tiver excedente, então pegar o excedente e cortar da lista.
    mtrx.sort(key=lambda x: (x.Peso1*x.Entrada1)+(x.Peso2*x.Entrada2), reverse=True)
    checked = sorted(mtrx, key=lambda x: (x.Peso1*x.Entrada1)+(x.Peso2*x.Entrada2), reverse=True)
    
    for i in range(xcd):
        print("Baixos:",mtrx[-1])
        mtrx.pop()

#/////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////////#
popul = []
population_size = int(input("Pop. limit: "))

gen_pop(popul,population_size)

print(f"Gen ``1`` ({len(popul)}):")
for i in popul:
    print(i)
filtro(popul)
print("//-------------------------------------------------------//")

era = 2
while True:
    filtro(popul)
    print(f"Gen ``{era}`` (After filter): {len(popul)}")
    for i in popul: print(i)
    print("//-------------------------------------------------------//")
    era+=1
    
    if len(popul) == population_size:
        #Se for igual a quanto começou, em teoria, todos já estão "bons" (Passando pelos filtros)*
        #Em teoria
        break
    elif len(popul) > population_size:
        #Caso seja maior que o inicial, organizar e retirar o excedente, de forma a deixar apenas os de "valor mais alto"
        cleansing(popul,(len(popul) - population_size))
    else:
        #Por fim, se for menor (Ou alguma outra eventualidade?), gera até dar no "necessário" (Quantia que começou), passa pela seleção e reseta
        gen_pop(popul,(population_size - len(popul)))
        nat_select(popul)
    
    print(f"Gen ``{era}`` (After natural selection): {len(popul)}")
    for i in popul: print(i)
    era+=1