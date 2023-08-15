massa = float(input("Por favor, informe seu peso em kg:\t"))
altura = float(input("Agora, sua altura em metros, utilize ponto para decimais:\t"))

def calc_imc(m, a):
    return m / pow(a,2)

def clas_imc(total):
    clasi = ""
    if total <= 18.5:
        clasi = "Abaixo do peso"
    elif total > 18.5 and total < 24.9:
        clasi = "Peso normal"
    elif total > 24.9 and total < 29.9:
        clasi = "Acima do peso"
    elif total > 29.9 and total < 34.9:
        clasi = "Obesidade I"
    elif total > 34.9 and total < 39.9:
        clasi = "Obesidade II"
    elif total > 40:
        clasi = "Obesidade III"
    return clasi

print("Seu valor de IMC é",calc_imc(massa,altura),"\nSua classificação é",clas_imc(calc_imc(massa,altura)))