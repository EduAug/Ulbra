try:
    x = int(input("Insira um valor para x: "))
except ValueError:
    x = "invalido"
finally:
    print("X deve ser um número, é",x)