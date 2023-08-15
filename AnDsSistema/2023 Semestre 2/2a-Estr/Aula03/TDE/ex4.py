def count_vowels(word):
    vowels = "aeiouAEIOU"
    counter = 0
    for i in word:
        if i in vowels:
            counter += 1
    return counter


total_vowel = count_vowels(input("Insira uma palavra para contar as vogais: "))
print("A palavra que você inseriu contém",total_vowel,"vogais")