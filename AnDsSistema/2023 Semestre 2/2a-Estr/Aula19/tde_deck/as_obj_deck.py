class Deck:
    def __init__(self):
        self._itens = []
    
    def __str__(self):
        returnable = ""
        for i in self._itens:
            returnable += str(i) + '\n'
        return returnable

    def tamanho(self):
        return len(self._itens)
    
    def check_tem_algo(self):
        return self.tamanho() != 0
    
    def check_frente(self):
        if self.check_tem_algo():
            return self._itens[0]

    def check_fundo(self):
        if self.check_tem_algo():
            return self._itens[-1]
    
# ^ Funções/Métodos gerais/genéricos 
# v Funções/Métodos próprios

    def adicionar_topo_deck(self,novo):
        self._itens.insert(0,novo)

    def adicionar_fundo_deck(self, novo):
        self._itens.append(novo)

    def remover_frente_deck(self):
        if self.check_tem_algo():
            self._itens.pop(0)
        else:
            pass

    def remover_fundo_deck(self):
        if self.check_tem_algo():
            self._itens.pop()
        else:
            pass

    def remover_de_qualquer_lugar(self,removivel):
        if removivel not in self._itens:
            print("Esse nome não está na fila")
        else:
            self._itens.remove(removivel)