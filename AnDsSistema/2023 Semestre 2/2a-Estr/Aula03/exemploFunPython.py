def saudacao(nome):
    return "Olá, "+nome+"! Bem-Vindo(a) à aula sobre funções."

def calcular_media(n1, n2):
    media = (n1+n2)/2
    return media
    
print(saudacao("João"))
print("A média é : ", calcular_media(7.5,8.2))

# -------------------------------//-------------------------

def dividir(a,b):
    quociente = a // b
    resto = a % b
    return quociente, resto

try:
    resu_quo, resu_res = dividir(2,10)
#    resu_div = dividir(14,0)
except ZeroDivisionError:
    print("Não divida por 0!")
else:
    print("Quociente:",resu_quo, " | Resto: ",resu_res)