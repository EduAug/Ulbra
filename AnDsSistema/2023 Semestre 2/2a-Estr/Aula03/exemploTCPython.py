try:
    num = int(input("Digite um número intero: "))
    if num % 2 == 0:
        print("É Par")
    else:
        print("É Ímpar")
except ValueError:
    print("O valor deve ser um número inteiro")
else:
    print("Operação concluida com sucesso!\nVocê inseriu",num)
finally:
    print("Fim de execução.")